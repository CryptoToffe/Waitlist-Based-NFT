// Set the metadata of this contract

await contract.metadata.set({
  name: "My Contract",
  description: "My contract description"
})

// Update the metadata of a contract

await contract.metadata.update({
  description: "My new contract description"
})

// Get the metadata of this contract

const metadata = await contract.metadata.get();
console.log(metadata);

