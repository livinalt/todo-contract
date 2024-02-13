import { ethers } from "hardhat";

async function main() {  

 
  // the contract name used in the deploycontract is the SetterGetter
  const todoContract = await ethers.deployContract("TodoContract");
  // this means 
  await todoContract.waitForDeployment();

  console.log(
    `TodoContract deployed to ${todoContract.target}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
