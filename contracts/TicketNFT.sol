// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {ERC1155} from "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import {ITicketNFT} from "./interfaces/ITicketNFT.sol";

// Uncomment this line to use console.log
import "hardhat/console.sol";
 
contract TicketNFT is ERC1155, ITicketNFT {
	address ownerAddr;
	
	constructor (address ticketAddr) ERC1155("") {ownerAddr = ticketAddr;}

    function owner() external view returns (address){return address(ownerAddr);}
    
    function mintFromMarketPlace(address to, uint256 nftId) external override{_mint(to, nftId, 1, "");}
	
	
}
