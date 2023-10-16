// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@uniswap-v3-core/interfaces/IUniswapV3Factory.sol";
import "@openzeppelin/access/Ownable.sol";

contract UserDepositRouter {
    constructor() {}

    function getRatio() internal view returns (uint nom, uint denom) {}

    function deposit(
        address token,
        uint256 amount
    ) external returns (uint256 positionId) {}

    function coreDeposit(
        uint amount,
        address depositor
    ) internal returns (uint256 positionId) {}
}
