# Forked by WarutaShinken from https://github.com/scotopic/silo-wallet
# Original Header Comments:
# Dependency comes from https://github.com/Chia-Network/chia-blockchain/blob/main/chia/util/bech32m.py
# Genesis address referenced: https://www.chiaexplorer.com/blockchain/address/xch18krkt5a9jlkpmxtx8akfs9kezkuldpsn4j2qpxyycjka4m7vu6hstf6hku

import sys, getopt
import sqlite3
import yaml

from chia.util.bech32m import decode_puzzle_hash, encode_puzzle_hash
from sqlite3 import Error
from pathlib import Path

import os

SILO_ROOT_PATH=Path(__file__).parent
FORKS_LIST_FILE=(SILO_ROOT_PATH / "forks.yaml").resolve()

# Based on chia/cmds/units.py (e.g. https://github.com/Chia-Network/chia-blockchain/blob/main/chia/cmds/units.py )
# How to check: cat $COIN_NAME/cmds/units.py | grep -i "10 **"; cat $COIN_NAME/consensus/block_rewards.py | grep -i "_per_"
# ChiaRose was one of several to change from trillion to billion units of measure
MILLION = 10 ** 6
HUNDRED_MILLION = 10 ** 8
BILLION = 10 ** 9
TRILLION= 10 ** 12
UNITS_OF_MEASUREMENT=TRILLION

# Full path to blockchain.sqlite: user_home_path/<coin data dir>/fork_mainnet_blockchain_path
user_home_path=Path.home()
fork_mainnet_blockchain_path="mainnet/db/blockchain_v1_mainnet.sqlite"
# TEMPORARY: silicoin currently is using a mixed path
fork_tsit_blockchain_path="mainnet/db/blockchain_v1_testnet.sqlite"
# For Skynet testnet (TXNT) #9
fork_txnt_blockchain_path="mainnet/db/blockchain_v1_testnet_09.sqlite"
# Generally defined by util/default_root.py > DEFAULT_ROOT_PATH
token_to_data_dir_mapping = {}


def main(argv):
    argumentList = sys.argv[1:]
    
    # Short options
    options = "ha:b:s:l"
    
    # Long options
    long_options = ["help", "reward-address=", "balance=", "spent=", "list-forks"]
    
    try:
        # Parsing argument
        arguments, values = getopt.getopt(argumentList, options, long_options)
        
        #No Arguments
        if len(arguments) == 0:
            if os.name == 'nt': #Windows
                print('Usage: silo.py -h')
            elif os.name == 'posix': #Unix/POSIX-Based
                print('Usage: python3 silo.py -h')
            else:
                print("I'm not even sure what platform you're running, but whatever, please provide an argument.")
            
            sys.exit(0)
        
        # checking each argument
        for currentArgument, currentValue in arguments:
            if currentArgument in ("-h", "--help"):
                print("NAME")
                print ("\tsilo (WarutaShinken fork) -- display your crypto (Chia/altcoin) wallet balance as a raw number.")
                print ("\tExtended for use in shell scripts.")
                
                print('')
                
                print("DESCRIPTION")
                print ("\tsilo -h | --help - Display this help.")
                print ("\tsilo -a <address> | --reward-address <receive-address> - Display a summary of your wallet balance and spendings")
                print ("\tsilo -b <receive-address> | --balance <receive-address> - Display your wallet address balance")
                print ("\tsilo -s <receive-address> | --spent <receive-address> - Display how many coins from your wallet were spent*")
                print ("\tsilo -l | --list-forks - Display currently supported forks from the {} file".format(FORKS_LIST_FILE))
                
                print('')
                
                print("EXAMPLE")
                print ("\tpython silo.py -b xch18krkt5a9jlkpmxtx8akfs9kezkuldpsn4j2qpxyycjka4m7vu6hstf6hku")
                
                print('')
                
                print("ADDITIONAL NOTES")
                print ("\t*I'm not too sure what it means for a coin to be 'spent'. I will clarify this in an update when someone informs")
                print ("\tme. Feel free to make an issue or PR to clarify it.")
            elif currentArgument in ("-a", "--reward-address"):
                print_summary(currentValue)
            elif currentArgument in ("-b", "--balance"):
                print_coins(currentValue, False)
            elif currentArgument in ("-s", "--spent"):
                print_coins(currentValue, True)
            elif currentArgument in ("-l", "--list-forks"):
                load_fork_names(print_list=True)
            
    except getopt.error as err:
        # output error, and return with an error code
        print (str(err))

def load_fork_names(print_list=False):
    if Path(FORKS_LIST_FILE).exists():
        try:
            forks_list_file = open(FORKS_LIST_FILE)
        except Error as e:
            print(e)
            sys.exit(1)
        global token_to_data_dir_mapping
        token_to_data_dir_mapping = yaml.load(forks_list_file, Loader=yaml.FullLoader)
        
        if (print_list==True):
            print(token_to_data_dir_mapping)
    else:
        print("ERROR: Check your that forks file exists and is in the correct format, then try again.")
        sys.exit(1)
    

def db_for_token(token_name):
    # get() method of dictionary data type returns 
    # value of passed argument if it is present 
    # in dictionary otherwise second argument will
    # be assigned as default value of passed argument
    
    coin_data_dir=token_to_data_dir_mapping.get(token_name, "nothing")
    if token_name == "tsit":
        full_path_to_db=user_home_path / coin_data_dir / fork_tsit_blockchain_path
    elif token_name == "txnt":
        full_path_to_db=user_home_path / coin_data_dir / fork_txnt_blockchain_path
    else:
        full_path_to_db=user_home_path / coin_data_dir / fork_mainnet_blockchain_path
    
    #print("FULL PATH:", full_path_to_db)
    
    if Path(full_path_to_db).exists():
        return full_path_to_db
    else:
        print("ERROR: blockchain path does not exist: ", full_path_to_db)
        sys.exit(1)

def get_token(address):
    for key in token_to_data_dir_mapping:
        if key in address[0:len(key)]:
            return key
    
    print("ERROR: Undefined blockchain, add your own to the {} list first and run the script again.".format(FORKS_LIST_FILE))
    sys.exit(1)

def get_db_file_from_address(address):
    load_fork_names();
    
    key = get_token(address)
    
    # Reset units of measurement if non-standard (i.e. ChiaRose)
    global UNITS_OF_MEASUREMENT
    UNITS_OF_MEASUREMENT = units_of_measurement(key)
    
    return db_for_token(key)

def units_of_measurement(fork_token_name):
    
    if fork_token_name == "xcd":
        UNITS_OF_MEASUREMENT = MILLION
    elif fork_token_name == "xcr" or fork_token_name == "ffk": or fork_token_name == "stai":
        UNITS_OF_MEASUREMENT = BILLION
    elif fork_token_name == "xcc":
        UNITS_OF_MEASUREMENT = HUNDRED_MILLION
    else:
        UNITS_OF_MEASUREMENT = TRILLION
        
    return UNITS_OF_MEASUREMENT

def get_puzzle_hash(address):
    return decode_puzzle_hash(address).hex()

#Returns all the coin records associated with the wallet address specified.
def get_rows(address, verbose=False):
    # print("Retreiving the wallet balance for:", address)
    
    # convert farmer address to puzzle hash
    puzzle_hash = get_puzzle_hash(address)
    
    # sql for puzzle hash
    try:
        db_file_to_load = get_db_file_from_address(address)
        
        if verbose:
            print(f"Found blockchain database: {db_file_to_load}")
            print(f"Searching for puzzle_hash: 0x{puzzle_hash}")
        
        conn = create_connection(db_file_to_load)
        
        dbcursor = conn.cursor()
        """
        sqlite3> select hex(amount) from coin_record where puzzle_hash="3d8765d3a597ec1d99663f6c9816d915b9f68613ac94009884c4addaefcce6af";
        bash>    echo $((16#246DDF9797668000))
        
        https://github.com/Chia-Network/chia-blockchain/blob/a76446eba9fbe5a872fb8d537dfda497fc319b48/chia/full_node/coin_store.py#L108-L120
        Check the store file, like block_store.py, coin_store.py
        Usually it's just one of the objects in streamable format
        Like block = BlockRecord.from_bytes(.....)
        """
        
        dbcursor.execute("SELECT * FROM coin_record WHERE puzzle_hash=?", (puzzle_hash,))
        
        return dbcursor.fetchall()
    except Error as e:
        print(e)

def transaction_size(row):
    return int.from_bytes(row[7], 'big') / UNITS_OF_MEASUREMENT

def coin_is_spent(row):
    return row[3]

def print_coins(address, count_spent_coins):
    rows = get_rows(address)
    coin_count = 0
    
    for row in rows:
        xch = transaction_size(row)
        
        #If the coin matches the criteria we're after...
        if coin_is_spent(row) == count_spent_coins:
            coin_count += xch
    
    print(format(coin_count, '.12f'), end="")

def print_summary(address):
    rows = get_rows(address, True)
    token = get_token(address).upper()
    
    wallet_balance = 0
    wallet_spendings = 0
    
    for row in rows:
        xch = transaction_size(row)
        
        if coin_is_spent(row):
            wallet_spendings += xch
        else:
            wallet_balance += xch
    
    print('')
    print('Summary:')
    print('')
    print(f"Wallet Address    : {address}")
    print(f"Wallet Puzzle Hash: 0x{get_puzzle_hash(address)}")
    print('')
    print(f"Wallet Balance    : {wallet_balance:.12f} {token}")
    print(f"Wallet Spendings  : {wallet_spendings:.12f} {token}")

def create_connection(db_file):
    conn = None
    try:
        conn = sqlite3.connect(str(db_file))
    except Error as e:
        print(e)
        
    return conn

if __name__ == "__main__":
    main(sys.argv[1:])
