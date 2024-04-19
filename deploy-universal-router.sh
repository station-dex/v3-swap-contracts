. .env

cd contract-deployments/universal-router
forge install
forge script --broadcast --rpc-url $RPC_URL --private-key $PRIVATE_KEY --sig 'run()' --legacy script/deployParameters/Deploy$UNIVERSAL_ROUTER_NETWORK_FILE.s.sol:Deploy$UNIVERSAL_ROUTER_NETWORK_FILE
cd ../../