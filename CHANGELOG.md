# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/). Since this is a simple fork of a Python program, I will be using integer versions rather than semantic ones. I will also be archiving each version into a branch instead of using releases.


## [4] - Upcoming

### Changes

- Added support for the following forks:
  - Salvia
  - STAI
  - Skynet
    - Supports Skynet testnet (TXNT) #9 as well.
  - Kujenga
  - Venidium
  - Aedge
  - Ethgreen
  - SHIBgreen
  - PecanRolls
- Updated minor per major ratio for Littlelamobocoin to 1000.
- Updated Fishery's directory name (`.fxxkfork` => `.fishery`).

## [3] - 2021/09/29

### Changes

- Reimplemented wallet summary from [scotopic's verison](https://github.com/scotopic/silo-wallet).
- Slight format change to the help menu.
- Now displays the help command usage when called with no arguments.
- Fixed Beer directory in `forks.yaml` (`.beer` => `.beernetwork`).
- Added support for the following forks:
  - Stor
  - Olive
  - BTCgreen
  - Mint
  - Goldcoin
  - Mogua
  - Tranzact
  - Pipscoin
- Example Scripts:
  - Added more fork examples.
  - Added Batch port of example script.

## [2] - 2021-09-21

### Changes

- Fixed a bug where the long options `--balance` and `--spent` were not recognised.
- Reordered Linux and Windows instructions in README.md due to the fact that is tool was primarily made with headless linux farms in mind.

## [1] - 2021-09-20

### Changes

- The initial release of this fork.
