// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
    uint256 public value;
    
    function setValue(uint256 _newValue) external {
        // Using require() statement
        require(_newValue > value, "New value must be greater than the current value");
        
        // Using assert() statement
        uint256 oldValue = value;
        value = _newValue;
        assert(value > oldValue);
        
        // Using revert() statement
        if (value > 100) {
            revert("Value cannot exceed 100");
        }
    }
}

