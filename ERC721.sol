// Set approval for all NFTs

const operator = "0x0000000000";
await contract.erc721.setApprovalForAll(operator, true);

// Transfer an NFT

const walletAddress = "0x0000000000";
const tokenId = 0;
await contract.erc721.transfer(walletAddress, tokenId);

// Transfer an NFT from a specific wallet

const fromWalletAddress = "0x0000000000";
const toWalletAddress = "0x0000000000";
const tokenId = 0;
await contract.erc721.transferFrom(fromWalletAddress, toWalletAddress, tokenId);

// Get NFT balance of a specific wallet

const walletAddress = "0x0000000000";
const balance = await contract.erc721.balanceOf(walletAddress);
console.log(balance);

// Get a single NFT

const tokenId = 0;
const nft = await contract.erc721.get(tokenId);
