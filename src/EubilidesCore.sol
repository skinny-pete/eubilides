// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// this is how we import stuff with those remappings
import "@uniswap-v3-core/interfaces/IUniswapV3Factory.sol";
import "@openzeppelin/access/Ownable.sol";

contract EubilidesCore is Ownable {
    constructor() Ownable(msg.sender) {}

    modifier onlyDepositRouter() {
        _;
    }
    modifier onlyTickSetter() {
        _;
    }

    function getYield(uint256 positionId) external view returns (uint256) {}

    function deposit(
        uint256 amountA,
        uint256 amountB,
        address depositor
    ) external returns (uint256 positionId) {}

    function close(uint256 positionId) external onlyTickSetter {}

    function rebalance(
        int24 newTickLower,
        int24 newTickUpper
    ) external onlyTickSetter {}

    function setTickRange(
        int24 newTickLower,
        int24 newTickUpper
    ) external onlyTickSetter returns (bool success) {}

    function updateTickSetter(
        address newTickSetter
    ) external onlyOwner returns (bool success) {}
}
