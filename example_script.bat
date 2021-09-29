@echo off

::Example script for getting the balances of every wallet at once.
::This is a Batch port of example_script.sh.

:main
	::Add your addresses here. These are mine (feel free to donate to them I guess).
	call :get_balance "Chia      " XCH  xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y
	call :get_balance "Flax      " XFX  xfx1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqxztlfx
	call :get_balance "Chaingreen" CGN  cgn1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqs7lpjx
	call :get_balance "HDDcoin   " HDD  hdd1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqp95rd2
	call :get_balance "Flora     " XFL  xfl1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqanrfnf
	call :get_balance "GreenDoge " GDOG gdog1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqd48l6w
	call :get_balance "Beer      " XBR  xbr1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqm4vtxs
	call :get_balance "Stor      " STOR stor1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq8mwf09
	call :get_balance "Goji      " XGJ  xgj1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqvuxwm5
	call :get_balance "Olive     " XOL  xol1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq5em8rg
	call :get_balance "BTCgreen  " XBTC xbtc1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqndhhzj
	call :get_balance "Mint      " XKM  xkm1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq0egaun
	call :get_balance "Goldcoin  " OZT  ozt1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqyfcjww
	call :get_balance "Mogua     " MGA  mga1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hql8d4kz
	call :get_balance "Tranzact  " TRZ  trz1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqfprpw9
	call :get_balance "Pipscoin  " PIPS pips1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqvlxe3y
exit /b

::Function for showing the balance of each wallet.
:: Arguments:
::  1: Coin Display Name (arbitrary)
::  2: ISO 4217 Currency Code (arbitrary)
::  3: Wallet Receive Address

:get_balance
	set p1=%1
	
	echo|set /p-="%p1:"=%: "
	silo.py -b %3
	echo. %2
exit /b

::Code Explanation:
:: Line 24: Exit Without Quitting CMD
:: Line 35: Echo without newline, and string manipulation on %p1% to remove double-quotes.
:: Line 37: Whitespace-Friendly Echo.
:: Line 38: Break From get_balance Subroutine