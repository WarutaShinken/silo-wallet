# silo-wallet (WarutaShinken fork)
<img src="assets/silo-wallet-icon.svg" data-canonical-src="silo-wallet-icon.svg" width="128" height="128" />
This fork was create for users that want a raw output of their wallet balance in raw form to be used in scripts.

# Silo ( aka "show your cold wallet balance" tool )
Quickly look up your Chia fork/altcoin wallet balance using your cold wallet public key.

### Original:

<img src="assets/silo-example.png" data-canonical-src="silo-example.png" width="768" height="92" />

### This Fork:
```
>silo.py -b xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y
0.000053012269

>silo.py -s xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y
0.000000000000
```

## Which Chia fork/altcoin is supported?
Every one of them, in theory. If you run the full node of the Chia fork/altcoin then you can use this tool to look up your balance.
You can see the currently known forks in the `forks.yaml` alternativelly run to see the same list:

`python3 silo.py -l`

### Adding new fork support
Note: I'll update this to the [original scotopic version](https://github.com/scotopic/silo-wallet) occasionally but this is how you can do it:

1. Open `forks.yaml`
1. Add your token + data directory in the same format as the rest of the forks.
1. `python3 silo.py -l` to verify

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
1. Download ZIP from https://github.com/WarutaShinken/silo-wallet/archive/refs/heads/main.zip
2. Extract.
3. `silo.py -h` (Windows) or `python3 silo.py -h` (Linux).

## Usage
Help Dialogue Example:

* Linux: `python3 silo.py -h`
* Windows: `silo.py -h`

This tool may not work with `python` if the default is Python 2.

* Get Wallet Balance: `silo.py -b <receive address>`
* Get Spent* Amount: `silo.py -s <receive address>`

\*I have no idea what 'spent' coins exactly are, whatever it is it doesn't simply refer to coins that have been sent from the wallet.

### Example Script

An example script (example_script.sh) has been provided, which uses my wallet addresses as an example. Here is it's output:
```
Chia      : 0.000053012269 XCH
Flax      : 6.000649000000 XFX
Chaingreen: 9000.000000000000 CGN
HDDcoin   : 63.000000000000 HDD
Flora     : 88.000000000000 XFL
GreenDoge : 840.000000000000 GDOG
```
This script has been ported to batch (example_script.bat) for Windows users. It should have identical output to it's Unix shell script counterpart.

## Support
Found this project useful? Consider sending me (Waruta) a donation:

* XCH: xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y
* XFX: xfx1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqxztlfx
* CGN: cgn1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqs7lpjx
* HDD: hdd1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqp95rd2
* XFL: xfl1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqanrfnf
* GDOG: gdog1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqd48l6w

**Don't forget to consider donating to the original creator too:**

* XCH: xch1w3c2nkkfh990qwvejlkj94f75cfy5fk2ecj3v2c7ja0xfxrzmgwst32tle
* XFX: xfx1072d3mzgpx4vegw7tacahgdrp9mkderv5yxaz5w23cts29t8t7fsjkaud6
* ETH: 0x7f9F5Fd62E97B8Ed490B464CF710B45054720b92
* BTC: bc1q6k6tgj2nmyu44fwvut8hfh0dzht53a2nzaajve

## Feedback/Contribution
Create a [GitHub issue](https://github.com/WarutaShinken/silo-wallet/issues) or pull request.
