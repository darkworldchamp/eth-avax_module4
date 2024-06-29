// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
contract DegenToken is ERC20, Ownable, ERC20Burnable  {

    constructor() ERC20("Degen", "DGN") Ownable(msg.sender){}

    enum Rarity {Classic, special, Epic, Mythic, Legendary}

    struct Item {
        string name;
        Rarity rarity;
        uint256 price; // Price in tokens
    }

    mapping(uint256 => Item) public items;

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    // Burning tokens
    function burnTokens(uint256 amount) external {
        _burn(msg.sender, amount);
    }
    function transferTokens(address to, uint256 amount) external {
    transfer(to, amount);
    }
    // Adding new items
    function addItem(uint itemId, string memory name, Rarity rarity, uint price) external onlyOwner {
        items[itemId] = Item(name, rarity, price);
    }

    // Purchasing items
    function purchaseItem(uint256 itemId) external {
        Item memory item = items[itemId];
        require(balanceOf(msg.sender) >= item.price, "Insufficient balance");
        _burn(msg.sender, item.price);
        // Logic to handle item transfer to the player would go here
    }

}
