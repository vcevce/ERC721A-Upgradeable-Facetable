

// SPDX-License-Identifier: MIT
// ERC721A Contracts v4.2.3
// Creator: Chiru Labs

pragma solidity ^0.8.4;

import '../../IERC721ABaseInternal.sol';

/**
 * @dev Interface of ERC721AQueryableBase.
 */
interface IERC721AQueryableInternal is IERC721ABaseInternal {
    /**
     * Invalid query range (`start` >= `stop`).
     */
    error InvalidQueryRange();
}