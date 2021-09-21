@echo off

::Example script for getting the balances of every wallet at once.
::This is a batch port of example_script.sh.

:main
	::Add your addresses here. These are mine (feel free to donate to them I guess).
	call :get_balance "Chia      " XCH  xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y
	call :get_balance "Flax      " XFX  xfx1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqxztlfx
	call :get_balance "Chaingreen" CGN  cgn1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqs7lpjx
	call :get_balance "HDDcoin   " HDD  hdd1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqp95rd2
	call :get_balance "Flora     " XFL  xfl1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqanrfnf
	call :get_balance "GreenDoge " GDOG gdog1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqd48l6w
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
:: Line 13: Exit without quitting cmd.
:: Line 24: Echo without newline, and string manipulation on %p1% to remove double-quotes.
:: Line 26: Whitespace-friendly echo.
:: Line 27: Break from get_balance subroutine.