// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Transact {
    address public owner;

    constructor(){
        owner = msg.sender;
    }

// Add Money to Smart Contract
    function recieveMoney() public payable returns (bool){
        require(msg.value >= 0 ether, "ADD SOME MONEY!");
        return true;
    }

// transfer() method used to send ethers, send() is other alternative but is old
    function sendMoney(address _account, uint256 _amount) public returns (bool) {
        //condition: for sending money balance of current smart contract should be more than the amount to be send
        require(address(this).balance > _amount, "INSUFFICIENT FUND!");
        // we need to make the address payable, second way to do this is add payable keyword in arguments beside _account i.e. address _account payable
        payable(_account).transfer(_amount);
        return true;
    }

// Like every account, smart contract also has some address and balance. 
    function getAccount() public view returns (address, uint256){
        // to get the current address
        address acc = address(this);
        // to get the balance of the address
        uint256 bal = acc.balance;
        return(acc, bal);
    }
}