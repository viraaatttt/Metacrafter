// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;

contract MyContract {
    string private myString;
    uint private myUint;
    bool private myBool;
    address private myAddress;

    function setMyString(string memory _value) public returns (string memory) {
        myString = _value;
        return myString;
    }

    function getMyString() public view returns (string memory) {
        return myString;
    }

    function setMyUint(uint _value) public returns (uint) {
        myUint = _value;
        return myUint;
    }

    function getMyUint() public view returns (uint) {
        return myUint;
    }

    function setMyBool(bool _value) public returns (bool) {
        myBool = _value;
        return myBool;
    }

    function getMyBool() public view returns (bool) {
        return myBool;
    }

    function setMyAddress(address _value) public returns (address) {
        myAddress = _value;
        return myAddress;
    }

    function getMyAddress() public view returns (address) {
        return myAddress;
    }
}
