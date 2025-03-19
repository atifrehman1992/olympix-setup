// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Market {
    mapping(address => uint256) public balances;
    mapping(address => uint256) public withdrawLimit;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function setWithdrawLimit(address user, uint256 limit) public {
        require(msg.sender == owner, "Only owner can set withdraw limit");
        withdrawLimit[user] = limit;
    }
}
