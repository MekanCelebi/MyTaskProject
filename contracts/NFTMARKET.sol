//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract NFTMarket is ReentrancyGuard {
    uisng Counters for Counters.Counter;
    Counters.Counter private _itemIds;
    Counters.Counter private _itemsSold;

    address payable owner;
    uint256 listingPrice = 0.025 ether;

    constructor() {
        owner = payable(msg.sender);
    }

    struct ÖarketItem {
        uint itemId;
        address nftContract;
        uint tokenId;
        address payable seller;
        address payable owner;
        uint price;
        bool sold;
    }

        mapping (uint256 => MarketItem) private idToMarketItem;
        event MarketItemCreated(
            uint indexed itemId,
            address indexed nftContract,
            uint indexed tokenId,
            address seller,
            address owner,
            uint price,
            bool sold
        );
        function getListingPrice() public view returns (uint) {
            return listingPrice;
        }
        
    



}
