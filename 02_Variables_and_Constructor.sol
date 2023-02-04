// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Variables{

/* 
Types of Variables:
    1. State Variable
    2. Local Variable
    3. Global Variable
*/

// State Variables : INSIDE THE CONRACT, EVERY FUNCTION AND METHOD HAVE ACCESS TO STATE VARIABLE. // They are in the blockchain forever. 
    string public name; 
    uint256 public age;
    string public gender;
    address public id;
    uint256 public registration;

// Local variable (_gender, _age): accessible in the block // Temporary in the memory

    // constructor is a function called automatically when a contract is created
    // used to initialize contract state.
    constructor(string memory _name,string memory _gender){ 
        name = _name;
        uint256 _age = 18;
        age = _age;
        gender = _gender;

// Global variables
        id = msg.sender; // one who deployed is the sender 
        registration = block.timestamp; 
    }
}

/*

// int 
    uint256 public age;
    int number;
    //uint
    //uint8
    //uint32
    //uint64
    //uint256

//bytes 
    bytes public user = "ADMIN";

// string
    string public name; 

//boolean 

    bool public minor = true; 

//address 

    address public owner = msg.sender;
*/