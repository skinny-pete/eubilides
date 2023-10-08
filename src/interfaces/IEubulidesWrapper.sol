// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
    * @title EubulidesWrapper interface
    * @notice A wrapper around a single Uniswap V3 position,
    * @notice where all the liquidity from investors is pooled together
    * @notice and the yield is distributed to investors when they close their position
    * @notice Fixed yield percentage is assigned to each position at the moment of deposit
*/
interface IEubulidesWrapper {
    /**
        * @notice Deposit liquidity into the wrapper
        * @param amountA The amount of the first token to be provided by an investor
        * @dev The second token is calculated by the wrapper
        * @dev We suppose that investors approve some extra amount of tokens to be transferred
        * @return tokenId The ID of the position token
    */
    function deposit(uint256 amountA) external returns (uint256 tokenId);

    /**
        * @notice Withdraw liquidity from the wrapper permissionlessly
        * @param tokenId The ID of the position token
    */
    function redeemEYT(uint256 tokenId) external;

    /**
        * @notice Get the current profit of a particular position in absolute terms
        * @param tokenId The ID of the position token
        * @return yield The current profit of a particular position in absolute terms
    */
    function getEYTYield(uint256 tokenId) external view returns (uint256 yield);

    /**
        * @notice Returns the underlying position of the wrapper
        * @return positionId The underlying position of the wrapper
    */
    function underlyingPosition() external view returns (uint256 positionId);

    /**
        * @notice Calculate the amount of the second token to be provided by an investor
        * @notice to be used by web UI to show the amount of tokens to be approved
        * @param amountA The amount of the first token to be provided by an investor
        * @return amountB The amount of the second token to be provided by an investor
    */
    function calculateAmountB(uint256 amountA) external view returns (uint256 amountB);
}
