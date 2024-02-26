// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

interface ICalculator {
    function add2Numbers(uint256 firstNum, uint256 secondNum) external; 

    function sub2Numbers(uint256 firstNum, uint256 secondNum) external; 

    function getAddResult() external view returns(uint256);

    function getSubResult() external view returns(uint256);
}