# MyToken Contract

This is a Solidity smart contract that implements a basic token functionality called MyToken. It allows minting and burning tokens, tracks balances for different addresses, and stores details about the token.

## Requirements

To fulfill the requirements, the contract includes the following features:

- Public variables for storing the details about the token:
  - `tokenName`: The name of the token.
  - `tokenAbbvr`: The abbreviation or symbol of the token.
  - `totalSupply`: The total supply of the token.

- A mapping of addresses to token balances:
  - `tokenHolders`: A mapping that associates addresses with their token balances.

- The `mint` function:
  - Parameters: `address` and `value`.
  - Increases the total supply by the specified `value` and increases the balance of the `address` by that amount.

- The `burn` function:
  - Parameters: `address` and `value`.
  - Decreases the total supply by the specified `value` and decreases the balance of the `address` by that amount.
  - Includes a conditional check to ensure that the balance of the `address` is greater than the amount being burned.

## Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public tokenName = "Savior";
    string public tokenAbbvr = "SAVE";
    uint public totalSupply = 0;
    mapping(address => uint) public tokenHolders;

    function mint(address _address, uint _value) public {
        totalSupply += _value;
        tokenHolders[_address] += _value;
    }

    function burn(address _address, uint _value) public {
        require(tokenHolders[_address] >= _value, "Cannot burn more than balance tokens");
        totalSupply -= _value;
        tokenHolders[_address] -= _value;
    }
}

