# DegenToken Smart Contract
This README provides an overview of the DegenToken smart contract, a custom ERC20 token with additional features such as minting, burning, item management, and purchasing.

# Contract Features
 Inheritance
 
ERC20: Standard interface for fungible tokens.

Ownable: Provides basic access control with an owner account.

ERC20Burnable: Allows tokens to be burned (destroyed).
 
 Token Details
 
Name: Degen

Symbol: DGN

Enumerations

Rarity: Defines item rarity levels:
Classic,
Special,
Epic,
Mythic,
Legendary,

Item: Represents an item available for purchase.

name: Name of the item.

rarity: Rarity level of the item.

price: Price of the item in tokens.

# Functions

Minting

mint(address to, uint256 amount): Mints new tokens to a specified address. Can only be called by the contract owner.

Burning
burnTokens(uint256 amount): Allows users to burn a specified amount of their tokens.

Transfers
transferTokens(address to, uint256 amount): Transfers tokens to another address.

Item Management

addItem(uint itemId, string memory name, Rarity rarity, uint price): Adds a new item to the contract. Can only be called by the contract owner.

Purchasing
purchaseItem(uint256 itemId): Allows users to purchase an item using tokens. The required amount of tokens is burned from the user's balance.

# Getting Started

# Connecting DegenToken to Avalanche Fuji Network

To deploy and interact with the DegenToken smart contract on the Avalanche Fuji testnet, follow these steps:

Prerequisites

MetaMask: Installed and set up in your browser.

Avalanche Fuji Testnet RPC URL: Obtain the RPC URL for the Avalanche Fuji network.

Adding Avalanche Fuji Network to MetaMask

Open MetaMask and go to the network selection dropdown.

Click on "Add Network."

Enter the following details:

```
Network Name: Avalanche Fuji C-Chain
New RPC URL: https://api.avax-test.network/ext/bc/C/rpc
Chain ID: 43113
Symbol: AVAX
Block Explorer URL: https://testnet.snowtrace.io/
```
Save the network.


# Deploying the Contract

Compile the DegenToken contract using your preferred Solidity development environment (e.g., Remix, Hardhat).

Connect MetaMask to the Avalanche Fuji network.

Deploy the contract from your MetaMask-connected account.

Interacting with the Contract

After deployment, you can interact with the contract using MetaMask and your development environment. Use the provided functions to mint, burn, transfer tokens, manage items, and purchase items.

Testing and Verification
Use test AVAX from the Avalanche Fuji faucet for transaction fees.
Verify contract functionality by calling its functions and checking results on the Avalanche Fuji block explorer.
Resources
Avalanche Fuji Testnet Faucet
Avalanche Fuji Block Explorer
