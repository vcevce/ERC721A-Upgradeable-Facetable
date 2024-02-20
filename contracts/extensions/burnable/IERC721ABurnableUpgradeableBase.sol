// SPDX-License-Identifier: MIT
// ERC721A Contracts v4.2.3
// Creator: Chiru Labs

pragma solidity ^0.8.4;

import '../../IERC721AUpgradeableBaseInternal.sol';

/**
 * @dev Interface of ERC721ABurnableUpgradeableBase.
 */
interface IERC721ABurnableUpgradeableBase {
    /**
     * @dev Burns `tokenId`. See {ERC721A-_burn}.
     *
     * Requirements:
     *
     * - The caller must own `tokenId` or be an approved operator.
     */
    function burn(uint256 tokenId) external;
}
