// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves; // state variable - it's stored permanently in contract storage

    event NewWave(address indexed from, uint256 timestamp, string message);

    struct Wave {
      address waver;
      string message;
      uint256 timestamp;
    }

    Wave[] waves;
    
    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function wave(string memory _message) public {
      totalWaves += 1;
      console.log("%s has waved /w message %s!", msg.sender, _message); // addrs who interact with contract

      waves.push(Wave(msg.sender, _message, block.timestamp));

      emit NewWave(msg.sender, block.timestamp, _message);

      uint256 prizeAmout = 0.0001 ether;

      require(
        prizeAmout <= address(this).balance,
        "Trying to withdraw more money than the contract has."
      );

      (bool success,) = (msg.sender).call{value: prizeAmout}("");

      require(success, "Failed to withdraw money from contract.");
    }

    function getAllWaves() public view returns (Wave[] memory) {
      return waves;
    }

    function getTotalWaves() public view returns (uint256) {
      console.log("We have %d total waves!", totalWaves);
      return totalWaves;
    }
}