// SPDX-License-Identifier: MIT 

pragma solidity 0.8.17;

contract VendingMachine {
    address public owner;
    mapping(address => uint) public donutBalance;

    constructor(){
        owner = msg.sender;
        donutBalance[address(this)] = 25;
    }

    modifier onlyOwner() {
        require(owner == msg.sender, "only owner can call this method");
        _;
    }

    function getDonutBalance() public view returns (uint){
        return donutBalance[address(this)];
    }

    function restock (uint amount) public onlyOwner {
        donutBalance[address(this)] += amount;
    }

}

