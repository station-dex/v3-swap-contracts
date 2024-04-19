. .env

cd contract-deployments/mixed-quoter
yarn
npx hardhat run --network $HARDHAT_NETWORK ./scripts/mixed-route-quoter.js
cd ../../