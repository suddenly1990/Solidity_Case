// SPDX-license-Identifier: MIT
pragma solidity ^0.8.24;

// base contract X
contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}
//base contract Y
contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

// there are 2 ways to initalize parent contract with parameters
// passs the parameters here in the inheritance list 
contract B is X("input to x"), Y("input to Y"){}

contract C is X, Y {
    // passs the parameters her in the constructor
    // similar to function modifiers.
    constructor(string memory _name, string memory _text) X(_name) Y(_name){}

}
// parent constructors are always called in the order of inheritance
// regardless of the order of parent contracts listted in the constructor of the child contract.

// order of constructors called:
// 1. x
// 2 .y
// 3 .D

contract D is X, Y {
    constructor() X("X was called") Y("Y was called") {}
}
// order of constructors called:
// 1. X
// 2. Y
// 3. D
contract E is X, Y {
    constructor() Y("Y was called") X("X was called") {}
}