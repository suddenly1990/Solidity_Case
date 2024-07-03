// SPDX-license-IDentifier: MIT
pragma solidity ^0.8.24;

contract DataLocaions {
    uint256[] public arr;
    mapping(uint256 => address) map;

    struct MyStruct {
        uint256 foo;
    }

    mapping(unit256 => MyStruct) myStructs;

    function f() public {
        // call _f with state variables
        _f(arr, map. myStructs[1]);
        // get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];
        // create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);
    }


    function _f(uint256[] storage _arr, mapping(uint256 => address) storage _map,MyStruct storage _mystruct) internal {
        //do somthing woth storage variables
    }

    //you can return memory variables
    function g(uint256[] memory _arr) public returns(uint256[] memory) {
        //do something whithmemory array
    }
    function h(uint256[] calldata _arr) external {
        // do something whith calldata aaray
    
    }

}