//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/Erc721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract NFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    address contractAddress;
    constructor(address marketplaceAddress) ERC721("Metaverse Tokens","METT"){
        contractAddress = marketplaceAddress;

    }
    function createToken(string mmemory tokenURI) public returns (uint){
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender,newItemId);
        _setTokenURI(newItemId,tokenURI);
        setApprovalForAll(contractAddress,true);

    }
}