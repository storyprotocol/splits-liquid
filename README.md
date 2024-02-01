# splits-liquid

## What

Liquid splits are splits where ownership is represented by NFTs (e.g. 721s or 1155s).

## Why

This design gives ~control of the split to the recipients themselves, allowing the transfer or sale of ownership.

## Notes

1. `LiquidSplitFactory.sol` powers liquid splits offered at app.0xsplits.xyz
2. To add to your own project, fork our [Liquid Splits template](https://github.com/0xSplits/splits-liquid-template) & inherit `LiquidSplit.sol`

## Verifications
```bash
ETHERSCAN_API_KEY=
SPLIT_MAIN=0x57CBFA83f000a38C5b5881743E298819c503A559
LS_FACTORY_CONTRACT=0xF678Bae6091Ab6933425FE26Afc20Ee5F324c4aE
LS1155_CLONE=0xC2039502aa6d154A13f1Ade7a05dBd48c962e73B

forge verify-contract --chain sepolia --etherscan-api-key ${ETHERSCAN_API_KEY} --watch --constructor-args $(cast abi-encode "constructor(address)" "${SPLIT_MAIN}") ${LS_FACTORY_CONTRACT} src/LiquidSplitFactory.sol:LiquidSplitFactory

forge verify-contract --chain sepolia --etherscan-api-key ${ETHERSCAN_API_KEY} --watch --constructor-args $(cast abi-encode "constructor(address)" "${SPLIT_MAIN}") ${LS1155_CLONE} src/CloneImpl/LS1155CloneImpl.sol:LS1155CloneImpl
```