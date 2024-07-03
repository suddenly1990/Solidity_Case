//SPDX_Licsence _Identifier:MIT
pragma solidity ^0.8.24;
contract Immutable {
    address public immutable MY_ADDRESS;
    address public immutable MY_UINIT;

    constructor(uint256 _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINIT = _myUint;
    }
}