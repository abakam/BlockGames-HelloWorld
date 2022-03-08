const hre = require("hardhat");

async function main() {

  // Get HelloWorld contract to deploy
  const HelloWorld = await hre.ethers.getContractFactory("HelloWorld");
  let defaultLanguage = "English";
  const helloWorld = await HelloWorld.deploy(defaultLanguage); // pass constructor parameters

  await helloWorld.deployed();

  console.log("HelloWorld deployed to:", helloWorld.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
