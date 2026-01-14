// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract OnlyEOAContract {

    modifier onlyEOA() {

        require(msg.sender == tx.origin, "Not EOA");
        _;

    }

    function callme() onlyEOA() external view returns (bool) {

        return true;

    }

}