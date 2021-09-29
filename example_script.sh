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
get_balance 'Beer      ' XBR  xbr1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqm4vtxs
get_balance 'Stor      ' STOR stor1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq8mwf09
get_balance 'Goji      ' XGJ  xgj1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqvuxwm5
get_balance 'Olive     ' XOL  xol1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq5em8rg
get_balance 'BTCgreen  ' XBTC xbtc1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqndhhzj
get_balance 'Mint      ' XKM  xkm1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq0egaun
get_balance 'Goldcoin  ' OZT  ozt1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqyfcjww
get_balance 'Mogua     ' MGA  mga1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hql8d4kz
get_balance 'Tranzact  ' TRZ  trz1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqfprpw9
get_balance 'Pipscoin  ' PIPS pips1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqvlxe3y