// SPDX_license-Identifier: MIT
pragma solidity ^0.8.24;

contract ViewAndPure {
    uint256 public x = 1;

    // promise not to modify the sstate
    function addTox(uint256 y) public view returns(uint256) {
        return x + y;
    }

    function add(uint256 x, uint256 y) public pure returns(uint256) {
        return i + j;
    }
}