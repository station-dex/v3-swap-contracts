require("dotenv").config({ path: "../../../.env" });
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

  const { V3_FACTORY, V2_FACTORY, WETH9, VERIFY_CONTRACTS } = process.env;

  // [Factory_V3, Factory_V2, WETH9]
  const params = [V3_FACTORY, V2_FACTORY, WETH9];

  const contract = await deploy("MixedRouteQuoterV1", ...params);
  const instance = await contract.deployed();

  console.log("MixedRouteQuoterV1: %s", instance.address);

  const balance = await owner.getBalance()
  const cost = previousBalance.sub(balance)
  console.log('Cost: %s ETH. Balance: %s ETH', formatEther(cost), formatEther(balance))

  if (VERIFY_CONTRACTS === "true") {
    await delay(20000)
    await run("verify:verify", {
      address: instance.address,
      constructorArguments: params,
    });
  }
};

start();
