// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ConditionalStatements {
    mapping(address => bool) public stakeholders;
    mapping(address => uint ) public contributions;
    mapping(address => bool) public firstTimers;

    function donate() public payable {
        if(contributions[msg.sender] == 2 ){
            stakeholders[msg.sender] = true;
            contributions[msg.sender] += 1;
        }else if(contributions[msg.sender] == 0){
            firstTimers[msg.sender] = true;
            contributions[msg.sender] +=1; 
        }else {
            firstTimers[msg.sender] = false ;
            contributions[msg.sender] +=1;
        }
    }

    
}