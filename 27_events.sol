// SPDX_license-Identifier: MIT
pragma solidity ^0.8.24;

contract Event {
    // Event declaration
    // up to 3 parameters can be indexed.
    // indexed parameters helps you filter the logs by the indexed parameter
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "hello world!");
        
        emit Log(msg.sender, "hello EVM!");
        emit AnotherLog();
        
    }
}


