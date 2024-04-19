const ethers = require('ethers')

const main = async () => {
  const provider = new ethers.providers.JsonRpcProvider(process.env.RPC_URL);
  const owner = new ethers.Wallet(process.env.PRIVATE_KEY, provider);

  const balance = await owner.getBalance()

  console.log(balance.toString())
}

main()