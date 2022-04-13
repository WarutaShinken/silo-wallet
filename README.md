# silo-wallet (WarutaShinken fork)
<img src="assets/silo-wallet-icon.svg" data-canonical-src="silo-wallet-icon.svg" width="128" height="128" />
This fork was create for users that want a raw output of their wallet balance in raw form to be used in scripts.

Discord Server: https://discord.gg/5GXKW4nGug

# Disclaimer Regarding Multiple Addresses

**It's possible that this tool only works for wallets that never had their receive addresses reset.** Take this into consideration when using it.

# Silo ( aka "show your cold wallet balance" tool )
Quickly look up your Chia fork/altcoin wallet balance using your cold wallet public key.

```
>silo.py -a xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y

Searching for puzzle_hash: 0x2574c794d11fbd762a9a7cdcaf17e1359156c01a2b75015365df39c1b9036eae

Summary:
<home-directory>/.chia/mainnet/db/blockchain_v1_mainnet.sqlite
Wallet Address    : xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y
Wallet Puzzle Hash: 0x2574c794d11fbd762a9a7cdcaf17e1359156c01a2b75015365df39c1b9036eae

Wallet Balance    : 4.000000000000 XCH
Wallet Spendings  : 0.000000000000 XCH

>silo.py -b xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y
2.000553012379

>silo.py -s xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y
0.000000000000
```

## Which Chia fork/altcoin is supported?
Every one of them, in theory. If you run the full node of the Chia fork/altcoin then you can use this tool to look up your balance.
You can see the currently known forks in `forks.yaml`. Alternatively, run `python3 silo.py -l` to see the same list.

### Manually Adding Fork Support

**DISCLAIMER:** There are hardcoded exceptions for certain forks to deal with different blockchain filenames and different minors per major values. You may have to research these values and modify the executable itself to implement proper support for such forks. This is just the way the original Silo Wallet was written.

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

An example script (example_script.sh) has been provided, which uses my wallet addresses as an example. Here is it's output (XBR and XGJ are excluded as I no longer run those forks anymore):
```
Chia           : 4.289108067600 XCH
Flax           : 44.801582911306 XFX
Chaingreen     : 76500.000000000000 CGN
HDDcoin        : 36.183254228018 HDD
Flora          : 352.000000000000 XFL
GreenDoge      : 90.000000000001 GDOG
Stor           : 12.088000000002 STOR
Olive          : 460.000000000000 XOL
BTCgreen       : 107.000000000000 XBTC
Mint           : 80.000000000000 XKM
Goldcoin       : 500.000000000000 OZT
Mogua          : 1856.000000000000 MGA
Tranzact       : 1095.000000000000 TRZ
Pipscoin       : 1385.000000000000 PIPS
Cactus         : 516.000000000000 CAC
Cryptodoge     : 2080000.000000000000 XCD
Maize          : 394.000000000001 XMZ
Kale           : 38.000000000000 XKA
Taco           : 280.000000000000 XTX
Tad            : 328.300000000000 TAD
Avocado        : 256.000000000000 AVO
Salvia         : 539.000000000000 XSLV
STAI           : 624.843447378000 STAI
Kujenga        : 502.000000000000 XKJ
Venidium       : 61280.000000000000 XVM
Aedge          : 234.000000000000 AEC
Skynet         : 435.000000000000 XNT
Ethgreen       : 1998.000000000000 XETH
SHIBgreen      : 336000.000000000000 XSHIB
PecanRolls     : 1320.000000000000 ROLLS
Littlelambocoin: 73.800000000000 LLC
Silicoin       : 0.000000000000 SIT
BPX            : 0.000000000000 BPX
Gold           : 0.000000000000 GL
Profit         : 0.000000000000 PROFIT
Ecostake       : 0.000000000000 ECO
Petroleum      : 1.000000000000 XPT
Cunt           : 3174.000000000000 VAG
```
This script has been ported to Batch (example_script.bat) for Windows users. It should have identical output to it's Unix shell script counterpart.

## Support
Found this project useful? Consider sending me (Waruta) a donation:

* XCH: xch1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqlpvm2y
* XFX: xfx1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqxztlfx
* <s>CGN: cgn1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqs7lpjx</s>
* HDD: hdd1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqp95rd2
* XFL: xfl1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqanrfnf
* <s>GDOG: gdog1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqd48l6w</s>
* <s>XBR: xbr1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqm4vtxs</s>
* STOR: stor1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq8mwf09
* <s>XGJ: xgj1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqvuxwm5</s>
* <s>XOL: xol1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq5em8rg</s>
* XBTC: xbtc1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqndhhzj
* XKM: xkm1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq0egaun
* OZT: ozt1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqyfcjww
* <s>MGA: mga1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hql8d4kz</s>
* TRZ: trz1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqfprpw9
* PIPS: pips1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqvlxe3y
* CAC: cac1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqqqx4aw
* XCD: xcd1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqkwnwmp
* XMZ: xmz1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq600qty
* <s>XKA: xka1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqxkhgdk</s>
* XTX: xtx1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq5kjrqy
* TAD: tad1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqcygeys
* <s>AVO: avo1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hquu8ck2</s>
* <s>XSLV: xslv1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq7p897u</s>
* STAI: stai1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqn5skda
* <s>TXNT: txnt1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq2u4ta6</s>
* <s>XKJ: xkj1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqqprxam</s>
* XVM: xvm1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqjaltxr
* AEC: aec1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqxmlg6x
* <s>XNT: xnt1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq8mjauf</s>
* <s>XETH: xeth1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqjtf7t6</s>
* XSHIB: xshib1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqrdl9tn
* ROLLS: rolls1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hq5s2vqe
* LLC: llc1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqzzytzj
* SIT: sit1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqth7tvn
* BPX: bpx1e753895n0zg7t2qmcgtlcrgxhafths77304vc87z6j88nm8mlthscelqtm
* GL: gl1l5g4r9hud4fmcddd2hng9pej5dxq4954l8d4fa5qlthczrydulwsm6xms0
* PROFIT: profit1l5g4r9hud4fmcddd2hng9pej5dxq4954l8d4fa5qlthczrydulwsjrgrc7
* ECO: eco1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqd8taz2
* XPT: xpt1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqejwfny
* VAG: vag1y46v09x3r77hv2560nw279lpxkg4dsq69d6sz5m9muuurwgrd6hqjft50k

Addresses with strikethrough are for forks that I suspect have been abandoned or are just poorly maintained (specifically Chaingreen).
Testnet coins have strikethrough because they just exist to test blockchain behaviour.

**Don't forget to consider donating to the original creator too:**

* XCH: xch1w3c2nkkfh990qwvejlkj94f75cfy5fk2ecj3v2c7ja0xfxrzmgwst32tle
* XFX: xfx1072d3mzgpx4vegw7tacahgdrp9mkderv5yxaz5w23cts29t8t7fsjkaud6
* ETH: 0x7f9F5Fd62E97B8Ed490B464CF710B45054720b92
* BTC: bc1q6k6tgj2nmyu44fwvut8hfh0dzht53a2nzaajve

## Feedback/Contribution
* Create a [GitHub issue](https://github.com/WarutaShinken/silo-wallet/issues) or pull request.
* Discord Server: https://discord.gg/5GXKW4nGug
