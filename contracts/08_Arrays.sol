// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Arrays {
    uint256[6] fixedArray = [0,1,2,3,4,5];
    uint256[] dynamicArray = [0,1,2,3,4,5,6,7];

    function getFixedArray() public view returns (uint256[6] memory) {
        return fixedArray;
    }

    function getDynamicArray() public view returns (uint256[] memory) {
        return dynamicArray;
    }

    function arrayLength() public view returns (uint256){
        return dynamicArray.length;
    }
    
    function arrayPush(uint256 _number) public returns (bool){
        dynamicArray.push(_number);
        return true;
    }

    function arrayPop() public returns (bool){
        dynamicArray.pop();
        return true;
    }

    function arrayItem(uint256 index) public view returns (uint){
        return dynamicArray[index];
    }
}