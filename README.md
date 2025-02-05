# DegenToken Smart Contract

The DegenToken smart contract is a custom ERC20 token with features such as minting, burning, item management, and purchasing.

## Contract Features

### Inheritance

- **ERC20**: Standard interface for fungible tokens.
- **Ownable**: Provides basic access control with an owner account.
- **ERC20Burnable**: Allows tokens to be burned.

### Token Details

- **Name**: Degen
- **Symbol**: DGN

### Enumerations

- **Rarity**: Defines item rarity levels:
  - Classic
  - Special
  - Epic
  - Mythic
  - Legendary

- **Item**: Represents an item available for purchase.
  - `name`: Name of the item.
  - `rarity`: Rarity level of the item.
  - `price`: Price of the item in tokens.

### Functions

- **mint(address to, uint256 amount)**
    - Mints new tokens to the specified address.
    - Only callable by the owner.

- **addItem(uint256 itemId, string memory name, Rarity rarity, uint256 price)**
    - Adds a new item to the contract.
    - Only callable by the owner.
    - Requires the item name to be non-empty and the price to be greater than zero.

- **redeemItem(uint256 itemId)**
    - Allows users to redeem an item by burning tokens equivalent to the item's price.
    - Requires the item to exist and the user to have sufficient balance.

-**getRedeemedItem(adress account)**
    - Shows all the redeemed item for the account address entered .
    - stores all the items in item[] array .
    - Returns the item details .
## Getting Started

### Connecting DegenToken to Avalanche Fuji Network

To deploy and interact with the DegenToken smart contract on the Avalanche Fuji testnet, follow these steps:

#### Prerequisites

- **MetaMask**: Installed and set up in your browser.
- **Avalanche Fuji Testnet RPC URL**: Obtain the RPC URL for the Avalanche Fuji network.

#### Adding Avalanche Fuji Network to MetaMask

1. Open MetaMask and go to the network selection dropdown.
2. Click on "Add Network."
3. Enter the following details:
```
Network Name: Avalanche Fuji C-Chain
New RPC URL: https://api.avax-test.network/ext/bc/C/rpc
Chain ID: 43113
Symbol: AVAX
Block Explorer URL: https://testnet.snowtrace.io/
```

4. Save the network.

### Deploying the Contract

1. Compile the DegenToken contract using your preferred Solidity development environment (e.g., Remix, Hardhat).
2. Connect MetaMask to the Avalanche Fuji network.
3. Deploy the contract from your MetaMask-connected account.

### Interacting with the Contract

After deployment, interact with the contract using MetaMask and your development environment. Use the provided functions to mint, burn, transfer tokens, manage items, and purchase items.

### Testing and Verification

- Use test AVAX from the [Avalanche Fuji Faucet](https://faucet.avax-test.network/) for transaction fees.
- Verify contract functionality by calling its functions and checking results on the [Avalanche Fuji Block Explorer](https://testnet.snowtrace.io/).
