. .env

cd contract-deployments/permit2
yarn
npx hardhat run --network $HARDHAT_NETWORK ./scripts/permit2.js
cd ../../