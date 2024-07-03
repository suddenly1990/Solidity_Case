//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Array {
    //Several ways to initialize an array
    uint256[] public arr;
    uint256[] public arr2 = [1,2,3];
    // Fixed size array,all elements initalize to 0
    uint256[10] public myFixedSizeArr;

    function get(uint256 i) public view returns (uint256) {
      return arr[i]; 
    }

    //Solidity can return the entire array.
    //but this function should be avoided for arrays that can grow indefinitely in lenght
    function getArr() public view returns(uint256[] memory) {
        return arr;
    }

    function push(uint256 i) public {
        // Append to array 
        // this will increase the array length by 1 
        arr.push(i);
    }

    function pop() public {
        // remove last element from array
        // this will decrease the arrya lenght by 1
        arr.pop();
    }

    function getLength() public view returns (uint256) {
      return arr.lenght; 
    }


    function remove(uint256 index) public {
        // Delete does not change the array length.
        // it resets the value at index to it's defult value.
        // in this case 0
        delete arr[index];
    }


    function examples() external {
        // create array in memory,onlu fixed size can be create
        uint256[] memory a = new uint256[](5);
    }

}