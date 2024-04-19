# Deploy Contracts for Uniswap V3

## Pre-requisites:
- Deploy v2 swap related contracts
- Setup `Volta` to manage Node.js versions
- Have `Forge Foundry` installed in your system
- Allow execute permissions to deploy script files 

```bash
chmod +x ./deploy-cli.sh
chmod +x ./deploy-permit2.sh
chmod +x ./deploy-mixed-quoter.sh
chmod +x ./deploy-universal-router.sh
```

## Setup
- Create a `.env` file
- Fill in the `.env` file with correct values, take reference from `.env.sample` file.
- Note that some environment variables will not be known at first, like the `V3_FACTORY` variable will only be available when `./deploy-cli.sh` is run.


## Using the Uniswap CLI

```bash
./deploy-cli.sh
```

- Then the deployed addresses will be saved in `state.json` file.

## Permit2

```bash
./deploy-permit2.sh
```

The deployed permit2 address will be shown on the terminal. Take a note of that somewhere safe. Suggested place would be on the same `state.json` file from earlier step.

## Mixed Route Quoter

```bash
./deploy-mixed-quoter.sh
```

The deployed mixed route quoter address will be shown on the terminal. Take a note of that somewhere safe. Suggested place would be on the same `state.json` file from earlier step.

## Universal Router

### Warning:
Please take note of the `UNIVERSAL_ROUTER_NETWORK_FILE` environment variable.

Based on what you've set as the value, there will be a corresponding file inside of `contract-deployments/universal-router/script/deployParameters/<UNIVERSAL_ROUTER_NETWORK_FILE>.s.sol`

Open the corresponding file, and set correct values based on previous steps and save it.

Then run the following command to deploy the contract.

```bash
./deploy-universal-router.sh
```

The deployed UniversalRouter address will be shown on the terminal. Take a note of that somewhere, best place would be on the same `state.json` file from earlier step.
