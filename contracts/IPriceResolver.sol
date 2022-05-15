// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

/**
  @notice A price resolver interface meant for NFT contracts to calculate price based on parameters.
 */
interface IPriceResolver {
    /**
      @notice A pricing function meant to return some default price. Should revert if not releant for a particular implementation.
     */
    function getPrice() external returns (uint256);

    /**
      @notice A function to calculate price based on the calling address.
     */
    function getPriceFor(address) external returns (uint256);

    /**
      @notice A function to calculate price based on the token id being minted.
     */
    function getPriceOf(uint256) external returns (uint256);

    /**
      @notice A function to calculate price based on caller address, token id being minted and some arbitrary collection of parameters, for example Merkle tree parts.
     */
    function getPriceWithParams(address, uint256, bytes calldata) external returns (uint256);
}
