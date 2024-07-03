// SPDX_license-Identifier: MIT
pragma solidity ^0.8.24;

contract Error {
    function testRequire(uint256 _i) public pure {
        //requure should be used to validate conditions such as
        // - inputs
        // - conditions before execution
        // - return values from calls to ohther functions 
        require(_i > 10, "Input must be greater than 10");
    } 
    function testRevert(uint256 _i) public pure {
        // revert is useful when the condition to check is complex
        // this code does the exact same thing ad the example about
        if (_i <= 10) {
            revert("input must be greater than 10");
        }
    }


    uint256 public num;

    function testAssert() public view {
        // assert should only be used to test for internal errors.
        // and to check invariants.

        //Here we assert taht num is always equal to -
        // since it is impossible to update the calue of num
        assert(num == 0);

    }

    // custom error 
    error  InsuffucientBalance(uint256 balance, uint256 withdrawAmout);

    function testCustomError(uint256 _withdrawAmout) public view {
        uint256 bal = adddress(this).balance;
        if (bal < _withdrawAmout) {
            revert InsuffucientBalance({balance: bal,withdrawAmout: _withdrawAmout}); 
        }
    }


}

