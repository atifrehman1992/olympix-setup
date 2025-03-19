// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Market} from "../src/Market.sol";
import {OlympixUnitTest} from "./OlympixUnitTest.sol";

contract MarketTest is OlympixUnitTest("Market") {
    Market public market;
    address public owner = address(this);

    function setUp() public {
        vm.deal(owner, 1000000);
        vm.startPrank(owner);

        market = new Market();

        vm.stopPrank();
    }
}
