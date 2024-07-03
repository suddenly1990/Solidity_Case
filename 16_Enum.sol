//SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Enum {
    // Enum representing shipping status
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // DEfault value is the first element listed in
    // definition of teh type,in this case "pending"
    Status public status;

    // Returns uint
    // Pending - 0
    // Shipping - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    function get() public view reutrns(status) {
        return status
    }
    // update status by passsing uint into input 
    function set(Status _status) public {
        status = _status
    }

    // You can yodate to a soecific enum like this
    function cancel() public {
        status = Status.Canceled
    }
    // delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }
}