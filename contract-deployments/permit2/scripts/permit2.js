const { ethers, run } = require("hardhat");
const { formatEther } = require('ethers/lib/utils')

const delay = (ms) =>
  new Promise((resolve) => {
    setTimeout(resolve, ms);
  });

const deploy = async (name, ...params) => {
  const contract = await ethers.getContractFactory(name);

  const deployed = await contract.deploy(...params);
  return deployed;
};

const start = async () => {
  const [owner] = await ethers.getSigners();

  const previousBalance = await owner.getBalance()
  console.log('Deployer: %s. Balance: %s ETH', owner.address, formatEther(previousBalance))

  const contract = await deploy("Permit2");
  const instance = await contract.deployed();

  console.log("Permit2: %s", instance.address);

  const balance = await owner.getBalance()
  const cost = previousBalance.sub(balance)
  console.log('Cost: %s ETH. Balance: %s ETH', formatEther(cost), formatEther(balance))

  if (process.env.VERIFY_CONTRACTS === "true") {
    await delay(20000)
    await run("verify:verify", {
      address: instance.address,
      constructorArguments: [],
    });
  }
};

start();
