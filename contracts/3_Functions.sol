// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Functions {

/* SYNTAX
function function_name(*arg) modifiers {
    // all your code 
}
*/

// View function declares that no state will be changed. 
// Pure function declares that no state variable will be changed or read.

    uint public score;

    function getAnswer() public {
        uint a = 1;
        uint b = 2;
        uint sum = a + b;
        
        score = getSquare(sum);
    }

// internal used inside the contract only
    function getSquare(uint number) internal pure returns (uint){
        return number * number;
    }
}