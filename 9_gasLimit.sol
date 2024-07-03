// SPDX-LIcense-IDentifier:MIT
pragma solidity ^0.8.24;

contract Gas {
    uint256 public i = 0;

    //Using up all of the gas that you send causes your transaction to fail.
    //State changes are undone.
    // gas spent are no refunded.
   function foreever() public {
   // Here we run a loop until all of the gas are spent
   // and the transaction fails
        while(true) {
            i += 1;
        }
   } 
}