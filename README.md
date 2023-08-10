# Waitlist Based NFT
### Getting Started
Crypto Toffe ERC721 NFT Deploy By [Thirdweb](https://thirdweb.com) <br> <br> 
Install the latest version of the SDK <br> 
```html
npm install @thirdweb-dev/sdk ethers@5
```

<a href="https://twitter.com/thirdweb">
    <img align="right" src="https://ipfs.io/ipfs/QmWVGsFo9HCQRtfa6pN8ku7uXp6N5BX2dyXU2SN5q5yvat?filename=Screenshot_100.png" height="300" />
</a>

Uploading Contract Metadata to IPFS images that you can embed in your `<meta>` tags.

For each keystroke, headless chromium is used to render an HTML page and take a screenshot of the result which gets cached.

See the image embedded in the tweet for a real use case.


## Uploading Contract Metadata to IPFS

By using Deploy:

Your contract metadata is automatically uploaded to IPFS meaning that we can make use of solc's default behavior to unlock our SDKs.
Your contract is automatically verified on Sourcify.
This makes it easy to build web3 apps, using our SDKs, without having to copy or update the contract ABI. Instead, the ABI is retrieved from the contract metadata uploaded to IPFS! This acts as a source of truth and thus is always up to date.

For more information on how contracts are automatically verified using Deploy, visit the "Self-verifiable contracts using solc and IPFS" blog post.

```html
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@thirdweb-dev/contracts/base/ERC721Base.sol";

contract MyNFT is ERC721Base {

      constructor(
        address _defaultAdmin,
        string memory _name,
        string memory _symbol,
        address _royaltyRecipient,
        uint128 _royaltyBps
    )
        ERC721Base(
            _defaultAdmin,
            _name,
            _symbol,
            _royaltyRecipient,
            _royaltyBps
        )
    {}

}
```


## Deploy your own

You'll want to fork this repository and deploy your own by [Thirdweb](https://thirdweb.com)


