// SPDX-License_IDentifier:MIT
pragma solidity ^0.8.24;

contract Counter {
    uint256 public count;

    //function to get the current count
    function get( ) public view return(uint256) {
        return count;
    }

    function inc() public {
        count += 1;
    }

    function dec() public {
        count -= 1;
    }
}