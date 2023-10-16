// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Eubulides Core Interface
/// @notice This interface defines the core functions for managing liquidity, yield, and rebalancing within the Eubulides protocol.
interface IEubulidesCore {
    /// @notice Fetch the yield earned for a specific position so far.
    /// @param positionId The unique identifier of the position.
    /// @return The calculated yield for the given position.
    function getYield(uint256 positionId) external view returns (uint256);

    /// @notice Deposit assets into the protocol to provide liquidity.
    /// @dev This function can only be called by the DepositRouter.
    /// @param amountA The amount of asset A to deposit.
    /// @param amountB The amount of asset B to deposit.
    /// @param depositor The address of the user making the deposit.
    /// @return positionId The unique identifier for the created position.
    function deposit(
        uint256 amountA,
        uint256 amountB,
        address depositor
    ) external returns (uint256 positionId); //onlyDepositRouter;

    /// @notice Close a position, withdrawing all liquidity and burning all associated position tokens.
    /// @param positionId The unique identifier of the position to be closed.
    function close(uint256 positionId) external;

    /// @notice Rebalance the position to adjust its tick range.
    /// @dev This function can only be called by the TickSetter.
    /// @dev Function will call redeployLiquidity on the EubilidesWrapper
    /// @param newTickLower The new lower tick bound.
    /// @param newTickUpper The new upper tick bound.
    function rebalance(int24 newTickLower, int24 newTickUpper) external; //onlyTickSetter;
}
