# DegenToken

DegenToken is an ERC20 token contract deployed on the Ethereum network. It represents a gaming token used within the Degen Gaming platform. The contract allows for token minting, transferring, redeeming, and burning functionality.

## Contract Details

- Name: Degen Token
- Symbol: DEGEN
- Network: Ethereum

## Functionality

The DegenToken contract provides the following functionality:

### Minting

The owner of the contract can mint new tokens by calling the `mint` function. Only the owner has the permission to mint tokens.

### Transferring Tokens

Token holders can transfer their tokens to other addresses by calling the `transfer` function.

### Checking Token Balance

Token holders can check their token balance by calling the `balanceOfPerson` function.

### Redeeming Tokens

Token holders can redeem their tokens for in-game items by calling the `redeemItems` function. The function accepts an item number as a parameter and performs the redemption based on the number provided. The corresponding amount of tokens is transferred to the contract address, and an NFT representing the redeemed item is minted using the DegenItems contract.

### Burning Tokens

Token holders can burn their tokens by calling the `burn` function. This permanently removes tokens from circulation.

## Deployment

The DegenToken contract has been deployed on the Ethereum network.

- Contract Address: 0x27F374F8df10D46f616895818e50d1EE1cDc527B

## Dependencies

The contract uses the following external libraries and contracts:

- OpenZeppelin: ERC20.sol, Ownable.sol
- DegenItems.sol (custom contract for managing in-game items)

## License

This contract is released under the MIT License.
