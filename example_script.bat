@echo off

::Example script for getting the balances of every wallet at once.
::This is a Batch port of example_script.sh.

:main
	::Add your addresses here. These are mine (feel free to donate to them I guess).
	call :get_balance "Chia           " XCH    xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y
	call :get_balance "Flax           " XFX    xfx1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqxztlfx
	call :get_balance "Chaingreen     " CGN    cgn1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqs7lpjx
	call :get_balance "HDDcoin        " HDD    hdd1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqp95rd2
	call :get_balance "Flora          " XFL    xfl1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqanrfnf
	call :get_balance "GreenDoge      " GDOG   gdog1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqd48l6w
	call :get_balance "Beer           " XBR    xbr1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqm4vtxs
	call :get_balance "Stor           " STOR   stor1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq8mwf09
	call :get_balance "Goji           " XGJ    xgj1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqvuxwm5
	call :get_balance "Olive          " XOL    xol1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq5em8rg
	call :get_balance "BTCgreen       " XBTC   xbtc1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqndhhzj
	call :get_balance "Mint           " XKM    xkm1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq0egaun
	call :get_balance "Goldcoin       " OZT    ozt1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqyfcjww
	call :get_balance "Mogua          " MGA    mga1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hql8d4kz
	call :get_balance "Tranzact       " TRZ    trz1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqfprpw9
	call :get_balance "Pipscoin       " PIPS   pips1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqvlxe3y
	call :get_balance "Cactus         " CAC    cac1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqqqx4aw
	call :get_balance "Cryptodoge     " XCD    xcd1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqkwnwmp
	call :get_balance "Maize          " XMZ    xmz1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq600qty
	call :get_balance "Kale           " XKA    xka1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqxkhgdk
	call :get_balance "Taco           " XTX    xtx1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq5kjrqy
	call :get_balance "Tad            " TAD    tad1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqcygeys
	call :get_balance "Avocado        " AVO    avo1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hquu8ck2
	call :get_balance "Salvia         " XSLV   xslv1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq7p897u
	call :get_balance "STAI           " STAI   stai1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqn5skda
	call :get_balance "Kujenga        " XKJ    xkj1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqqprxam
	call :get_balance "Venidium       " XVM    xvm1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqjaltxr
	call :get_balance "Aedge          " AEC    aec1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqxmlg6x
	call :get_balance "Skynet         " XNT    xnt1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq8mjauf
	call :get_balance "Ethgreen       " XETH   xeth1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqjtf7t6
	call :get_balance "SHIBgreen      " XSHIB  xshib1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqrdl9tn
	call :get_balance "PecanRolls     " ROLLS  rolls1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq5s2vqe
	call :get_balance "Littlelambocoin" LLC    llc1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqzzytzj
	call :get_balance "Silicoin       " SIT    sit1l5g4r9hud4fmcddd2hng9pej5dxq4954l8d4fa5qlthczrydulwsfmswmt
	call :get_balance "BPX            " BPX    bpx1e753895n0zg7t2qmcgtlcrgxhafths77304vc87z6j88nm8mlthscelqtm
	call :get_balance "Gold           " GL     gl1l5g4r9hud4fmcddd2hng9pej5dxq4954l8d4fa5qlthczrydulwsm6xms0
	call :get_balance "Profit         " PROFIT profit1l5g4r9hud4fmcddd2hng9pej5dxq4954l8d4fa5qlthczrydulwsjrgrc7
	call :get_balance "Ecostake       " ECO    eco1l5g4r9hud4fmcddd2hng9pej5dxq4954l8d4fa5qlthczrydulws0t9c4j
	call :get_balance "Petroleum      " XPT    xpt1l5g4r9hud4fmcddd2hng9pej5dxq4954l8d4fa5qlthczrydulwsm7qvyu
	call :get_balance "Cunt           " VAG    vag1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqjft50k
exit /b

::Function for showing the balance of each wallet.
:: Arguments:
::  1: Coin Display Name (arbitrary)
::  2: Ticker (arbitrary)
::  3: Wallet Receive Address

:get_balance
	set p1=%1
	
	echo|set /p-="%p1:"=%: "
	silo.py -b %3
	echo. %2
exit /b

::Code Explanation:
:: Line 48: Exit Without Quitting CMD
:: Line 59: Echo without newline, and string manipulation on %p1% to remove double-quotes.
:: Line 61: Whitespace-Friendly Echo.
:: Line 62: Break From get_balance Subroutine
