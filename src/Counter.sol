// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// this is how we import stuff with those remappings
import "@uniswap-v3-core/interfaces/IUniswapV3Factory.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
