// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Calculator {
    uint256  addResult;
    uint256  subResult;

    function add2Numbers(uint256 firstNum, uint256 secondNum) external {
        addResult= firstNum + secondNum;
    }

    function sub2Numbers(uint256 firstNum, uint256 secondNum) external {
        require(firstNum > secondNum, "firstNum must be greater than secondNum");
        subResult=  firstNum - secondNum;
    }

    function getAddResult() external view returns(uint256){
        return addResult;
    }

    function getSubResult() external view returns(uint256){
        return subResult;
    }
}
