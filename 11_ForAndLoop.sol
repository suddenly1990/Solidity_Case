//SPDX_license_Identifiler: MIT
pragma solidity ^0.8.24;

contract Loop {
    function loop() public {
        // for loop
        for (uint256 i = 0; i < 10; i++) {
           if (i == 3) {
                continue;
           } else {
                break;
           } 
        }

        //while loop
        uint256 j;
        while(j < 10) {
            j++;
        }


    }
}