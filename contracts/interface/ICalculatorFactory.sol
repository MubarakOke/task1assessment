// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "../Calculator.sol";

interface ICalculatorFactory {
    function createCalculator() external returns (Calculator newCalculator_, uint256 length_);

    function getCalculatorClones() external view returns(Calculator[] memory);
}