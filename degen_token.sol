// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {
    
    constructor() ERC20("Degen", "DGN") Ownable(msg.sender){}
    
    // Enumeration representing different levels of item rarity
    enum Rarity {Classic, Special, Epic, Mythic, Legendary}

    // Structure representing an item with name, rarity, and price
    struct Item {
        string name;
        Rarity rarity;
        uint256 price;
    }
    
    // Mapping to store items identified by a unique uint256 ID
    mapping(uint256 => Item) public items;

    // Function to mint new tokens, only callable by the owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Function to add new items to the contract, only callable by the owner
    function addItem(uint256 itemId, string memory name, Rarity rarity, uint256 price) public onlyOwner {
        require(bytes(name).length > 0, "Name cannot be empty");
        require(price > 0, "Price must be greater than 0");
        items[itemId] = Item(name, rarity, price);
    }

    // Function to redeem items by burning tokens equivalent to the item's price
    function redeemItem(uint256 itemId) public {
        Item memory item = items[itemId];
        require(bytes(item.name).length > 0, "Item does not exist");
        require(balanceOf(msg.sender) >= item.price, "Insufficient balance");
        _burn(msg.sender, item.price);
    }
}
