# Smart Contract

This is a simple smart contract written in Solidity that demonstrates the usage of `require()`, `assert()`, and `revert()` statements.

## Functionality

The contract showcases the following functionality:

- Successfully uses the `require()` statement to check a condition and revert the transaction if it's not met.
- Successfully uses the `assert()` statement to check for internal errors in the code.
- Successfully uses the `revert()` statement to explicitly revert the transaction.

## Usage

1. Install dependencies:


2. Compile the smart contract:


3. Run tests:


## Smart Contract Details

The smart contract is named `ExampleContract` and has the following state variable and function:

### State Variable

- `value` (uint256): Stores the current value.

### Function

- `setValue(uint256 _newValue)`: Allows setting a new value for `value`. It demonstrates the usage of the `require()`, `assert()`, and `revert()` statements.

- `require()`: Checks if the `_newValue` is greater than the current value. If not, it reverts the transaction with an error message.
- `assert()`: Assigns the new value and verifies that it is greater than the old value. If not, it triggers an exception and reverts the transaction.
- `revert()`: Checks if the new value exceeds 100. If it does, it triggers a revert with an error message.

## License

This smart contract is licensed under the [MIT License](LICENSE).
