. .env

initial_balance=$(PRIVATE_KEY=$PRIVATE_KEY RPC_URL=$RPC_URL node balance.js)

node contract-deployments/cli/index.js -pk $PRIVATE_KEY -j $RPC_URL -w9 $WETH9 -ncl $NATIVE_CURRENCY_LABEL -o $WALLET_ADDRESS -v2 $V2_FACTORY -g $GAS_PRICE_GWEI -c $CONFIRMATIONS

final_balance=$(PRIVATE_KEY=$PRIVATE_KEY RPC_URL=$RPC_URL node balance.js)

# Calculate the difference in wei
difference_wei=$((initial_balance - final_balance))

# Convert wei to ETH
difference_eth=$(echo "scale=18; $difference_wei / 1000000000000000000" | bc)

# Print the difference in ETH
echo "Deployment Cost (ETH): $difference_eth"