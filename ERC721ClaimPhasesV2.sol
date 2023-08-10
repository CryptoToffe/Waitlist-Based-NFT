// Claim NFTs

const quantity = 1; // how many unique NFTs you want to claim

const tx = await contract.erc721.claim(quantity);
const receipt = tx.receipt; // the transaction receipt
const claimedTokenId = tx.id; // the id of the NFT claimed
const claimedNFT = await tx.data(); // (optional) get the claimed NFT metadata

// Configure claim conditions

const presaleStartTime = new Date();
const publicSaleStartTime = new Date(Date.now() + 60 * 60 * 24 * 1000);
const claimConditions = [
  {
    startTime: presaleStartTime, // start the presale now
    maxClaimableSupply: 2, // limit how many mints for this presale
    price: 0.01, // presale price
    snapshot: ['0x...', '0x...'], // limit minting to only certain addresses
  },
  {
    startTime: publicSaleStartTime, // 24h after presale, start public sale
    price: 0.08, // public sale price
  }
]);
await contract.erc721.claimConditions.set(claimConditions);

// Claim NFTs to a specific wallet

const address = "0x0000000"; // address of the wallet you want to claim the NFTs
const quantity = 1; // how many unique NFTs you want to claim

const tx = await contract.erc721.claimTo(address, quantity);
const receipt = tx.receipt; // the transaction receipt
const claimedTokenId = tx.id; // the id of the NFT claimed
const claimedNFT = await tx.data(); // (optional) get the claimed NFT metadata

// Get the claimed supply

const claimedNFTCount = await contract.totalClaimedSupply();
console.log(`NFTs claimed: ${claimedNFTCount}`);

// Get the unclaimed supply

const unclaimedNFTCount = await contract.totalUnclaimedSupply();
console.log(`NFTs left to claim: ${unclaimedNFTCount}`);
