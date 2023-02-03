// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

//Bit Wise operators excluded because I don't understand them
//Assignment not included because it's easy ... [= =* =- =+ =/]

// Arithmetic Operators
contract ArithmeticOperators{

    function addition(int num1, int num2) public pure returns (int) {
        return num1 + num2;
    }

    function substraction(int num1, int num2) public pure returns (int) {
        return num1 - num2;
    }

    function division(int num1, int num2) public pure returns (int) {
        return num1 / num2;
    }

    function multiplication(int num1, int num2) public pure returns (int) {
        return num1 * num2;
    }

    function modulus(int num1, int num2) public pure returns (int){
        return num1 % num2;
    }
}

// Relational Operators
contract relationalOperators{

    function isEqual(int num1, int num2) public pure returns (bool) {
        return num1 == num2;
    }

    function isNotEqual(int num1, int num2) public pure returns (bool) {
        return num1 != num2;
    }

    function isGreater(int num1, int num2) public pure returns (bool){
        return num1 > num2;
    }
    
    function isGreaterOrEqualTo(int num1, int num2) public pure returns (bool){
        return num1 >= num2;
    }
    
    function isLesser(int num1, int num2) public pure returns (bool){
        return num1 < num2;
    }
    
    function isLesserOrEqualTo(int num1, int num2) public pure returns (bool){
        return num1 <= num2;
    }
}

// Logical Operators
contract LogicalOperators {
    
    // and operator 
    function andOperator(int num1, int num2, int num3) public pure returns (bool) {
        return (num1 == num2) && (num2 == num3);
    }
    
    // or operator
    function orAnyOperator(int num1, int num2, int num3) public pure returns (bool) {
        return (num1 == num2) || (num2 == num3);
    }

    // not operator
    function notOperator(int num1, int num2) public pure returns (bool) {
        return !(num1 == num2);
    }
}

// Conditional Operators
contract ConditionalOperators {
    function performConditional(int num1, int num2) public pure returns (int){
        int result = num1 > num2 ? num1 - num2 : num2 - num1;
        return result;
    }
}
