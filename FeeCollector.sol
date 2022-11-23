pragma solidity ^0.8.17;

contract FeeCollector {
     address public owner;
     uint256 public balance;    

     constructor() {
         owner = msg.sender;
         }

    receive() payable external {
        balance += msg.value;
    }

}