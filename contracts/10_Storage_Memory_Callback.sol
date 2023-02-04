// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

//Storage   expensive than memory and callback 
//Memory 
//Callback  cheapest  only to read


// if you are not going to modify data ... use callback
// if you are manipulating ... use memory

// but use storage only when u want to store a certain kind of value
// like state variable, mappings and arrays should be used with storage

contract Demo{
//Storage blockchain permanently
    string public name;

//Memory 
    //no need to mention memory for integers
    function setName(string calldata _name) public {
        name = _name;
    }

//calldata can only read data (can be used to assign also na )
}