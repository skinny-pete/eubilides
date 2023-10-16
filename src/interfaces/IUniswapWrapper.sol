// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Uniswap Wrapper Interface
/// @notice This interface provides methods to interact with Uniswap, specifically liquidity management.
interface IUniswapWrapper {
    /// @notice Add liquidity to a Uniswap pool.
    /// @param amountA The amount of asset A to be added.
    /// @param amountB The amount of asset B to be added.
    /// @return success A boolean indicating if the liquidity addition was successful.
    function addLiquidity(
        uint256 amountA,
        uint256 amountB
    ) external returns (bool success);

    /// @notice Redeploy liquidity to a new tick range in the Uniswap pool.
    /// @param amountA The amount of asset A to be redeployed.
    /// @param amountB The amount of asset B to be redeployed.
    /// @param newTickLower The new lower tick bound for the redeployed liquidity.
    /// @param newTickUpper The new upper tick bound for the redeployed liquidity.
    /// @return success A boolean indicating if the liquidity redeployment was successful.
    function redeployLiquidity(
        uint256 amountA,
        uint256 amountB,
        int24 newTickLower,
        int24 newTickUpper
    ) external returns (bool success);
    
}
