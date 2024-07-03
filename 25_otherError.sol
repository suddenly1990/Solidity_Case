// SPDX_license-Identifier: MIT
pragma solidity ^0.8.24;

contract Account {
    unit256 public balance;
    uint256 public constant MAX_UINT = 2 ** 256 - 1;

    function deposit(uint256 _amount) public {
        uint256 oldBalance = balance;
        uint256 newBalance = balance + _amount;

        //balance + _amount does not overflow if balance + +amount >= balance

        require(newBalance >= oldBalance, "overflow");

        balance = newBalance;
        
        assert(balance >= oldBalance);  
    }

    function withdraw(uint256 _amount) public {
        uint256 oldBalance = balance;
        // balance - _amount droes not underflow if balance >= _amout
        require(balance >= _amount, "underflow");

        if (balance < _amount) {
            revert("Underflow"); 
        }
        balance -= _amount;

        assert(balance <= oldBalance);

    }


}
