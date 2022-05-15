// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

import '@openzeppelin/contracts/utils/Strings.sol';

import './ITokenUriResolver.sol';

/**
  @notice 
 */
contract IndexedTokenURIResolver is ITokenUriResolver {
    using Strings for uint256;

    string public baseUri;

    /**
      @notice An ERC721-style token URI resolver that appents token id to the end of a base uri.
      @param _baseUri Root URI
     */
    constructor(string memory _baseUri) {
        baseUri = _baseUri;
    }

    function tokenUri(uint256 _tokenId) external view returns (string memory uri) {
        uri = string(abi.encodePacked(baseUri, _tokenId.toString()));
    }
}
