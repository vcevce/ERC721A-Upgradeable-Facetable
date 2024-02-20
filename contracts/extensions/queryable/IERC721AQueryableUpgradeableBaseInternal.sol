

// SPDX-License-Identifier: MIT
// ERC721A Contracts v4.2.3
// Creator: Chiru Labs

pragma solidity ^0.8.4;

import '../../IERC721AUpgradeableBaseInternal.sol';

/**
 * @dev Interface of ERC721AQueryableBase.
 */
interface IERC721AQueryableUpgradeableBaseInternal is IERC721AUpgradeableBaseInternal {
    /**
     * Invalid query range (`start` >= `stop`).
     */
    error InvalidQueryRange();
}