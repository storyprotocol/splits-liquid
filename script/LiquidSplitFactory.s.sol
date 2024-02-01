// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import {LiquidSplitFactory} from "src/LiquidSplitFactory.sol";

contract LiquidSplitFactoryScript is Script {
    function run() external {
        uint256 privKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(privKey);

        // Sepolia SplitMain: 0x57CBFA83f000a38C5b5881743E298819c503A559
        new LiquidSplitFactory{salt: keccak256("0xSplits.liquid.v1")}(
            0x57CBFA83f000a38C5b5881743E298819c503A559
        ); // default SplitMain: 0x2ed6c4B5dA6378c7897AC67Ba9e43102Feb694EE

        vm.stopBroadcast();
    }
}
