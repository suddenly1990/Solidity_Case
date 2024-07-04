// SPDX_license-Identifier: MIT
pragma solidity ^0.8.24;

contract FUnctionModifier {
    // we will use these variables to deminstrate how to use
    // modifiers.
    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor() {
        // set the transaction sender as the owner of the contract.
        owner = msg.sender;
    }

    // modifier to check that the caller is the owner of the contract.
    modifier onlyOwner() {
        require(msg.sender == owner. "Not owner");
        // underscore is a special character only used inside
        // a function modifier and it tells solidity to 
        // execute the rest of the code.
        _;
    }

    // Modifiers can take inputs. this modifier checks that the address passed in is not the zero address.
    modifier validAddress(address _addr) {
        require(_addr != address(0), "not valied address");
    }

    function changeOwener(address _newOwner) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
    }

    // Modifiers can be called before and / or after a function.
    // this modifier prevetns a function from being called while it is still executing.
    modifier noReentrancy() {
        require(!locked,"No reentrancy");

        locked = true;
        _;
        locked = false;
    }
    function decrement(uint256 i) public noReentrancy {
      x -= i;

      if (i > 1) {
        decrement(i - 1);
      } 
    }
}
