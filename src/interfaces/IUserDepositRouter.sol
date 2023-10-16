// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/// @title User Deposit Router
/// @notice Allows single-sided deposit by swapping deposited tokens into correct ratio for the current tick range

interface IUserDepositRouter {
    function deposit(
        address token,
        uint256 amount
    ) external returns (bool success);
}
