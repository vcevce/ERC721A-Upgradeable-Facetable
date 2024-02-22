// SPDX-License-Identifier: MIT
// ERC721A Contracts v4.2.3
// Creators: Chiru Labs

pragma solidity ^0.8.4;

import '../ERC721ABase.sol';
import '../extensions/queryable/ERC721AQueryable.sol';
import '../extensions/burnable/ERC721ABurnable.sol';
import './DirectBurnBitSetterHelperUpgradeable.sol';
import '../ERC721A__Initializable.sol';

contract ERC721AQueryableMockUpgradeable is
    ERC721A__Initializable,
    ERC721ABase,
    ERC721AQueryable,
    ERC721ABurnable,
    DirectBurnBitSetterHelperUpgradeable
{
    function __ERC721AQueryableMock_init(string memory name_, string memory symbol_) internal onlyInitializingERC721A {
        __ERC721A_init_unchained(name_, symbol_);
        __ERC721AQueryable_init_unchained();
        __ERC721ABurnable_init_unchained();
        __DirectBurnBitSetterHelper_init_unchained();
        __ERC721AQueryableMock_init_unchained(name_, symbol_);
    }

    function __ERC721AQueryableMock_init_unchained(string memory, string memory) internal onlyInitializingERC721A {}

    function safeMint(address to, uint256 quantity) public {
        _safeMint(to, quantity);
    }
}
