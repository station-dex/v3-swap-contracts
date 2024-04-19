// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import {DeployUniversalRouter} from '../DeployUniversalRouter.s.sol';
import {RouterParameters} from 'contracts/base/RouterImmutables.sol';

contract DeployXLayerMainnet is DeployUniversalRouter {
    function setUp() public override {
        params = RouterParameters({
            permit2: 0x959922bE3CAee4b8Cd9a407cc3ac1C251C2007B1,
            weth9: 0xe538905cf8410324e03A5A23C1c177a474D59b2b,
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
            v2Factory: 0x5FbDB2315678afecb367f032d93F642f64180aa3,
            v3Factory: 0xCf7Ed3AccA5a467e9e704C703E8D87F634fB0Fc9,
            pairInitCodeHash: 0x56ccab99ef57d79cda8d7fd636277385f6f09eed2d5a21c412a8eb8f53cfc991,
            poolInitCodeHash: 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
        });

        unsupported = UNSUPPORTED_PROTOCOL;
    }
}
