// SPDX-License_Identufier:MIT
pragma solidity ^0.8.24;

contract Primitives {
    bool public boo = true;

    /*unit stand for unsigned integer,meaning non negative intergers differnet sizes are avaibalbe
        unit8 ranges from 0 to 2**8 - 1
        unit16 ranges from 0 to 2 **16 - 1
        ...
        unit256 ranges from 0 to 2 **256 - 1
    */
    uint8 public u8 = 1;
    uint256 public u256 = 456;
    uint256 public u = 124; // unit is an alias for unit256

    /*Negative numbers are allowed for int types.
    like unit,diffrent ranges are availabel from int8 to int256
    int256 ranges from -2 ** 255 to 2 ** 255 -1
    int128 ranges from -2 ** 127 to 2 ** 127 - 1*/

    int8 public i8 = -1;
    int256 public i256 = 456;
    int256 public i = -123;// int is asem as int256

    //mininum and maximun of int
    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    /*In solidity,the data type byte reoresent a sequence of bytes.
    Solodity presents two type pf bytes types:
    - fixed-sized tyte arrays
    -dynamically-sized byte arrays.
    the term bytes in Solidity represents a dynamic array of bytes.
    It's a shorthand for byte[] .
    */

    bytes1 a = 0xb5;
    bytes1 b = 0x56;

    //Default values
    //Unassigned variables have a default value
    bool public defaultBool; //false
    uint256 public defaultUint; // 0
    int256 public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000



} 