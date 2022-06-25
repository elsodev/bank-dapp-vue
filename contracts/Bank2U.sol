// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Bank2U {
     mapping(address => uint) private balances;
    
    function deposit() external payable {
        require(msg.value > 0, "Please deposit anything more than zero");
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint amount) external {
        require(amount > 0, "Please provide an amount");
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount; // deduct from our record
        payable(msg.sender).transfer(amount); // transfer payment
    }

    function balance() external view returns (uint) {
        return balances[msg.sender]; // returns the balanace of this user
    }
}