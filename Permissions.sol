// Grant a role to a specific address

await contract.roles.grant("minter", "0x0000000");

// Revoke a role from a specific address

await contract.roles.revoke("minter", "0x0000000");

// Overwrite the list of members for specific roles

const minterAddresses = await contract.roles.get("minter");
await contract.roles.setAll({
 minter: []
});
console.log(await contract.roles.get("minter")); // No matter what members had the role before, the new list will be set to []

//  Get all members of a specific role

const minterAddresses = await contract.roles.get("minter");
