#Example script for getting the balances of every wallet at once.

#Function for showing the balance of each wallet.
# Arguments:
#  1: Coin Display Name (arbitrary)
#  2: ISO 4217 Currency Code (arbitrary)
#  3: Wallet Receive Address

get_balance()
{
	echo "$1: $(python3 silo.py -b $3) $2"
}

#Add your addresses here. These are mine (feel free to donate to them I guess).
get_balance 'Chia      ' XCH  xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y
get_balance 'Flax      ' XFX  xfx1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqxztlfx
get_balance 'Chaingreen' CGN  cgn1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqs7lpjx
get_balance 'HDDcoin   ' HDD  hdd1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqp95rd2
get_balance 'Flora     ' XFL  xfl1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqanrfnf
get_balance 'GreenDoge ' GDOG gdog1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqd48l6w
