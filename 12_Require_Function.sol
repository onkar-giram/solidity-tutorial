// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract RequireFunction {
    uint public share = 5;
    address owner;

    constructor(){
        owner = msg.sender;
    } 

    function withNoRequirement(uint _share) public {
        share = _share;
    }

    function withRequirement(uint _share) public {
        // condition will be checked, or the text in second parameter will be executed.
        require(msg.sender == owner, "YOU NEED TO BE THE OWNER TO ACCESS THE SHARE");
        share = _share;
    }
}