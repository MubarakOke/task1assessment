import { ethers } from "hardhat";

const main = async () => {
    const calculatorAddress = "0x694bb71a6aEA03bA2Cd3C01243773247c0089838";
    const Calculator = await ethers.getContractAt("ICalculator", calculatorAddress);

    const addtx= await Calculator.add2Numbers(4, 5);
    addtx.wait();

    const resultAddtx= await Calculator.getAddResult();

    console.log("result", resultAddtx);
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});