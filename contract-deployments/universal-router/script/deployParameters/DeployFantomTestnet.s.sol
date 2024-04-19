// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import {DeployUniversalRouter} from '../DeployUniversalRouter.s.sol';
import {RouterParameters} from 'contracts/base/RouterImmutables.sol';

contract DeployFantomTestnet is DeployUniversalRouter {
    function setUp() public override {
        params = RouterParameters({
            permit2: 0xfb58Fb8471d37B007A1ffE0f0BDb82F5489D9f34,
            weth9: 0x0F532A02503BcE28444cE6d4ccC163cC1E2e56A6,
            seaportV1_5: UNSUPPORTED_PROTOCOL,
            seaportV1_4: UNSUPPORTED_PROTOCOL,
            openseaConduit: UNSUPPORTED_PROTOCOL,
            nftxZap: UNSUPPORTED_PROTOCOL,
            x2y2: UNSUPPORTED_PROTOCOL,
            foundation: UNSUPPORTED_PROTOCOL,
            sudoswap: UNSUPPORTED_PROTOCOL,
            elementMarket: UNSUPPORTED_PROTOCOL,
            nft20Zap: UNSUPPORTED_PROTOCOL,
            cryptopunks: UNSUPPORTED_PROTOCOL,
            looksRareV2: UNSUPPORTED_PROTOCOL,
            routerRewardsDistributor: UNSUPPORTED_PROTOCOL,
            looksRareRewardsDistributor: UNSUPPORTED_PROTOCOL,
            looksRareToken: UNSUPPORTED_PROTOCOL,
            v2Factory: 0x66Ffc1aB24C8f15BeAf7B7bC0388d0d5B97e5cA9,
            v3Factory: 0x837a6B24A12C36fAFD94dc483066fECEB04De300,
            pairInitCodeHash: 0xd3a534249384c44cffe9cfe331595c4e339920198b0af2805dc4b6086b2c4dee,
            poolInitCodeHash: 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
        });

        unsupported = UNSUPPORTED_PROTOCOL;
    }
}
