// SPDX-License-Identifier: MIT
// ERC721A Contracts v4.2.3
// Creator: Chiru Labs

pragma solidity ^0.8.4;

import '../../ERC721AUpgradeableBase.sol';
import './IERC721ABurnableUpgradeableBase.sol';
import '../../ERC721AUpgradeableBaseInternal.sol';
import '../../ERC721A__Initializable.sol';

/**
 * @title ERC721ABurnableUpgradeableBase.
 *
 * @dev ERC721A token that can be irreversibly burned (destroyed).
 */
abstract contract ERC721ABurnableUpgradeableBase is
    ERC721A__Initializable,
    ERC721AUpgradeableBase,
    IERC721ABurnableUpgradeableBase
{
    function __ERC721ABurnable_init() internal onlyInitializingERC721A {
        __ERC721ABurnable_init_unchained();
    }

    function __ERC721ABurnable_init_unchained() internal onlyInitializingERC721A {}

    /**
     * @dev Burns `tokenId`. See {ERC721A-_burn}.
     *
     * Requirements:
     *
     * - The caller must own `tokenId` or be an approved operator.
     */
    function burn(uint256 tokenId) public virtual override {
        _burn(tokenId, true);
    }
}
