// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Market} from "../src/Market.sol";

contract MarketScript is Script {
    Market public counter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        counter = new Market();

        vm.stopBroadcast();
    }
}
