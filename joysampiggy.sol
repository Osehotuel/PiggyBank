// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Joy{

    event deposit(uint amount);

    event withdraw(uint amount);

    address public owner = msg.sender;


    receive() external payable{

        emit deposit(msg.value);
    }

    function Withdraw() public{

    require (msg.sender == owner, "Error, you are not the owner");

    emit withdraw(address(this).balance);
    
    selfdestruct(payable(msg.sender));