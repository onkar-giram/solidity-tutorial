//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Mapping{
    // to know the balance of the account 
    mapping(address => uint256) public balanceOf;

    // balance of the account will be donated 
    function donate() public payable {
        balanceOf[msg.sender] += msg.value;
    }
}