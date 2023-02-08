// SPDX-License-Identifier: Unlicensed

pragma solidity ^0.8.7;

contract FunctionModifier {
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier ownerOnly(string memory message){
        require(msg.sender == owner, message);
        _;
    }
     
    function withdraw() external view ownerOnly("Unauthorized entity") returns (address){
        return owner;
    }

}