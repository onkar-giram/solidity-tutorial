// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Payment {

    address public owner;

    constructor(){
        owner = msg.sender;
    }

    function withdrawTo() public view returns (bool) { 
// checks for a specific condition ... if satisfied will execute further...
    require(msg.sender == owner, "ADMIN ONLY!");
    return true;  
    }
}

contract Payer is Payment {
    constructor(){}

    function getOwner() public view returns(address){
    return owner;
    }
}

contract Caller {
    Payer person = new Payer();

    function getResult() public view returns (address){
        return person.getOwner();
    }

}