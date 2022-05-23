#Example script for getting the balances of every wallet at once.

#Function for showing the balance of each wallet.
# Arguments:
#  1: Coin Display Name (arbitrary)
#  2: Ticker (arbitrary)
#  3: Wallet Receive Address

get_balance()
{
	echo "$1: $(python3 silo.py -b $3) $2"
}

#Add your addresses here. These are mine (feel free to donate to them I guess).
get_balance 'Chia           ' XCH    xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y
get_balance 'Flax           ' XFX    xfx1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqxztlfx
get_balance 'Chaingreen     ' CGN    cgn1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqs7lpjx
get_balance 'HDDcoin        ' HDD    hdd1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqp95rd2
get_balance 'Flora          ' XFL    xfl1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqanrfnf
get_balance 'GreenDoge      ' GDOG   gdog1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqd48l6w
get_balance 'Beer           ' XBR    xbr1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqm4vtxs
get_balance 'Stor           ' STOR   stor1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq8mwf09
get_balance 'Goji           ' XGJ    xgj1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqvuxwm5
get_balance 'Olive          ' XOL    xol1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq5em8rg
get_balance 'BTCgreen       ' XBTC   xbtc1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqndhhzj
get_balance 'Mint           ' XKM    xkm1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq0egaun
get_balance 'Goldcoin       ' OZT    ozt1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqyfcjww
get_balance 'Mogua          ' MGA    mga1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hql8d4kz
get_balance 'Tranzact       ' TRZ    trz1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqfprpw9
get_balance 'Pipscoin       ' PIPS   pips1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqvlxe3y
get_balance 'Cactus         ' CAC    cac1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqqqx4aw
get_balance 'Cryptodoge     ' XCD    xcd1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqkwnwmp
get_balance 'Maize          ' XMZ    xmz1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq600qty
get_balance 'Kale           ' XKA    xka1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqxkhgdk
get_balance 'Taco           ' XTX    xtx1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq5kjrqy
get_balance 'Tad            ' TAD    tad1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqcygeys
get_balance 'Avocado        ' AVO    avo1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hquu8ck2
get_balance 'Salvia         ' XSLV   xslv1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq7p897u
get_balance 'STAI           ' STAI   stai1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqn5skda
get_balance 'Kujenga        ' XKJ    xkj1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqqprxam
get_balance 'Venidium       ' XVM    xvm1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqjaltxr
get_balance 'Aedge          ' AEC    aec1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqxmlg6x
get_balance 'Skynet         ' XNT    xnt1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq8mjauf
get_balance 'Ethgreen       ' XETH   xeth1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqjtf7t6
get_balance 'SHIBgreen      ' XSHIB  xshib1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqrdl9tn
get_balance 'PecanRolls     ' ROLLS  rolls1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq5s2vqe
get_balance 'Littlelambocoin' LLC    llc1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqzzytzj
get_balance 'Silicoin       ' SIT    sit1l5g4r9hud4fmcddd2hng9pej5dxq4954l8d4fa5qlthczrydulwsfmswmt
get_balance 'BPX            ' BPX    bpx1e753895n0zg7t2qmcgtlcrgxhafths77304vc87z6j88nm8mlthscelqtm
get_balance 'Gold           ' GL     gl1l5g4r9hud4fmcddd2hng9pej5dxq4954l8d4fa5qlthczrydulwsm6xms0
get_balance 'Profit         ' PROFIT profit1l5g4r9hud4fmcddd2hng9pej5dxq4954l8d4fa5qlthczrydulwsjrgrc7
get_balance 'Ecostake       ' ECO    eco1l5g4r9hud4fmcddd2hng9pej5dxq4954l8d4fa5qlthczrydulws0t9c4j
get_balance 'Petroleum      ' XPT    xpt1l5g4r9hud4fmcddd2hng9pej5dxq4954l8d4fa5qlthczrydulwsm7qvyu
get_balance 'Cunt           ' VAG    vag1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqjft50k
