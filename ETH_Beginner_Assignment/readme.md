# Coin Contract

This is a simple Solidity contract that implements a basic coin (token) functionality. It allows minting and burning tokens, tracks balances for different addresses, and stores details about the coin.

## Requirements

To fulfill the requirements, the contract includes the following features:

- Public variables for storing the details about the coin:
  - `tokenName`: The name of the token.
  - `tokenAbbrv`: The abbreviation or symbol of the token.
  - `totalSupply`: The total supply of the token.

- A mapping of addresses to balances:
  - `balances`: A mapping that associates addresses with their token balances.

- The `mint` function:
  - Parameters: `address` and `value`.
  - Increases the total supply by the specified `value` and increases the balance of the `address` by that amount.

- The `burn` function:
  - Parameters: `address` and `value`.
  - Decreases the total supply by the specified `value` and decreases the balance of the `address` by that amount.
  - Includes conditionals to ensure that the balance of the `address` is greater than or equal to the amount being burned.

