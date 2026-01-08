// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HigherVersionCalc {

    function add(int8 num1, int8 num2) external pure returns (int8 result) {
        
        result = num1 + num2;
        
    }

    function sub(int8 num1, int8 num2) external pure returns (int8 result) {
        
        result = num1 - num2;
        
    }

}