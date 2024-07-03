//SPDX-License-Identifiler:MIT
pragma solidity ^0.8.24;

contract Mapping {
    //mapping from address to uint
    mapping(address => uint256) public myMap;

    function get(address  _addr) public view returns (uint256) {
       //mapping always retuns a value
        // if the value was never set,it will retun the default value.
        return myMap[_addr]
    }

    function set(address _addr, unit256 _i) public {
        myMap[_addr] = i;
    }

    function remove(address _addr) public  {
       delete myMap[_addr]; 
    }
}

contract NestedMapping {
    // Nested mapping(mapping from address to another mapping)
    mapping(address => mapping(uint256 => bool)) public nested;

    function get(address _addr1,uint256 _i) public view returns(bool) {
        // Yout can get values from a nested mapping;
        // even when it is not initialized
        return nested[_addr1][_i];
    }
    function set(address _addr1, uint256 _i, bool _boo) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1,uint256 _i) public {
        delete nested[_addr1][i];
    }
}


