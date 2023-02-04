// SPDX-License-Identifier: MIT;

pragma solidity ^0.8.7;

contract Iterators { 
    uint private whileResult;
    uint private doWhileResult;
    uint private forResult;

    function whileLoop () public returns (bool) { 
        uint i = 0;
        while(i < 5){
            whileResult++;
            i++;
        }
        return true;
    }

    function dowhileLoop () public returns (bool) {
        uint i = 0 ;
        do{
            doWhileResult++;
            i++;
        }while(i < 5);
        return true;
    }

    function forLoop () public returns(bool) {
        for(uint i = 0; i < 5; i++){
            forResult++;
        }
        return true;
    }

    function getResult () public view returns (uint, uint, uint){
        return (whileResult, doWhileResult, forResult);
    }
}