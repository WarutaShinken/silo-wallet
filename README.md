# silo-wallet (WarutaShinken fork)
<img src="assets/silo-wallet-icon.svg" data-canonical-src="silo-wallet-icon.svg" width="128" height="128" />
This fork was create for users that want a raw output of their wallet balance in raw form to be used in scripts.

# Silo ( aka "show your cold wallet balance" tool )
Quickly look up your Chia fork/altcoin wallet balance using your cold wallet public key.

```
>silo.py -a xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y

Searching for puzzle_hash: 0x2574c794d11fbd762a9a7cdcaf17e1359156c01a2b75015365df39c1b9036eae

Summary:
<home-directory>/.chia/mainnet/db/blockchain_v1_mainnet.sqlite
Wallet Address    : xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y
Wallet Puzzle Hash: 0x2574c794d11fbd762a9a7cdcaf17e1359156c01a2b75015365df39c1b9036eae

Wallet Balance    : 0.000053012269 XCH
Wallet Spendings  : 0.000000000000 XCH

>silo.py -b xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y
0.000053012269

>silo.py -s xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y
0.000000000000
```

## Which Chia fork/altcoin is supported?
Every one of them, in theory. If you run the full node of the Chia fork/altcoin then you can use this tool to look up your balance.
You can see the currently known forks in `forks.yaml`. Alternatively, run `python3 silo.py -l` to see the same list.

### Manually Adding Fork Support

1. Open `forks.yaml`.
2. Add your token + data directory in the same format as the rest of the forks.
3. `python3 silo.py -l` to verify.

## Install/Requirements
Requires Python 3.6+ and familiarity with CLI. Tested and working on:
* Ubuntu 18.04.6 LTS
* Windows 10

### Install:
Before you begin, make sure you have PyYAML installed: `pip install pyyaml`
Otherwise, you will run into `ModuleNotFoundError: No module named "yaml"`.

Via `git`:
* Linux: `git clone https://github.com/WarutaShinken/silo-wallet; cd silo-wallet; python3 silo.py -h`
* Windows: `git clone https://github.com/WarutaShinken/silo-wallet & cd silo-wallet & silo.py -h`

Manually:
1. Download ZIP from https://github.com/WarutaShinken/silo-wallet/archive/refs/heads/main.zip.
2. Extract.
3. `silo.py -h` (Windows) or `python3 silo.py -h` (Linux).

## Usage
Help Dialogue Example:

* Linux: `python3 silo.py -h`
* Windows: `silo.py -h`

This tool may not work with `python` if the default is Python 2.

* Get Wallet Summary: `silo.py -a <receive-address>`
* Get Wallet Balance: `silo.py -b <receive-address>`
* Get Spent* Amount: `silo.py -s <receive-address>`
* List Supported Forks: `silo.py -l`

\*I have no idea what 'spent' coins exactly are, whatever it is it doesn't simply refer to coins that have been sent from the wallet.

### Example Script

An example script (example_script.sh) has been provided, which uses my wallet addresses as an example. Here is it's output:
```
Chia      : 0.000053012269 XCH
Flax      : 8.000649000000 XFX
Chaingreen: 11000.000000000000 CGN
HDDcoin   : 63.000000000000 HDD
Flora     : 104.000000000000 XFL
GreenDoge : 940.000000000000 GDOG
Beer      : 12.000000000000 XBR
Stor      : 48.000000000000 STOR
Goji      : 0.000000000000 XGJ
Olive     : 2.000000000000 XOL
BTCgreen  : 2.000000000000 XBTC
Mint      : 32.000000000000 XKM
Goldcoin  : 16.000000000000 OZT
Mogua     : 50.000000000000 MGA
Tranzact  : 135.000000000000 TRZ
Pipscoin  : 0.000000000000 PIPS
```
This script has been ported to Batch (example_script.bat) for Windows users. It should have identical output to it's Unix shell script counterpart.

## Support
Found this project useful? Consider sending me (Waruta) a donation:

* XCH: xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y
* XFX: xfx1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqxztlfx
* <s>CGN: cgn1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqs7lpjx</s>
* HDD: hdd1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqp95rd2
* XFL: xfl1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqanrfnf
* GDOG: gdog1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqd48l6w
* <s>XBR: xbr1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqm4vtxs</s>
* STOR: stor1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq8mwf09
* <s>XGJ: xgj1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqvuxwm5</s>
* XOL: xol1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq5em8rg
* XBTC: xbtc1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqndhhzj
* XKM: xkm1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq0egaun
* OZT: ozt1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqyfcjww
* MGA: mga1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hql8d4kz
* TRZ: trz1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqfprpw9
* PIPS: pips1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqvlxe3y

Addresses with strikethrough are for forks that I suspect have been abandoned or are just poorly maintained (specifically Chaingreen).

**Don't forget to consider donating to the original creator too:**

* XCH: xch1w3c2nkkfh990qwvejlkj94f75cfy5fk2ecj3v2c7ja0xfxrzmgwst32tle
* XFX: xfx1072d3mzgpx4vegw7tacahgdrp9mkderv5yxaz5w23cts29t8t7fsjkaud6
* ETH: 0x7f9F5Fd62E97B8Ed490B464CF710B45054720b92
* BTC: bc1q6k6tgj2nmyu44fwvut8hfh0dzht53a2nzaajve

## Feedback/Contribution
Create a [GitHub issue](https://github.com/WarutaShinken/silo-wallet/issues) or pull request.
