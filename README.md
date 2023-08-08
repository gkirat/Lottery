# Decentralized Lottery Smart Contract

A secure and transparent decentralized lottery system built on the Ethereum blockchain using Solidity.

## Overview

This Ethereum smart contract implements a decentralized lottery, allowing participants to purchase lottery tickets and giving them a chance to win the entire jackpot. The contract is designed with fairness and transparency in mind, leveraging blockchain's immutability and cryptographic randomness.

## Features

- Simple and intuitive interface for buying lottery tickets.
- Secure random winner selection based on blockchain data.
- Automated payout to the winning participant.
- Built-in deadline mechanism for timely execution.
- Age verification for participation.

## How it Works

1. Players purchase lottery tickets by sending Ether to the contract.
2. The contract manager sets the deadline for ticket sales.
3. Once the deadline is reached, the contract randomly selects a winner.
4. The entire jackpot is automatically transferred to the winner's address.

## Getting Started

### Prerequisites

- Ethereum Wallet (e.g., MetaMask) or compatible Ethereum client.
- Familiarity with Solidity and Ethereum smart contracts.


## Usage

1. Connect your Ethereum wallet to the Ethereum network.
2. Interact with the deployed contract on a user interface to buy tickets.
3. Monitor the contract's status and winner announcement.

## Smart Contract Functions

1. buylottery(uint _playage) public payable: Allows participants to buy lottery tickets.
2. winner() public payable owner: Randomly selects a winner after the deadline and transfers the jackpot.
   
## Contribution

Contributions to this project are welcome! If you have suggestions, enhancements, or bug fixes, please create an issue or a pull request.

## Fork the repository.
1. Create a new branch: git checkout -b feature/your-feature.
2. Commit your changes: git commit -am 'Add your feature'.
3. Push to the branch: git push origin feature/your-feature.
4. Open a pull request.

##License

This project is licensed under the MIT License. See the LICENSE file for details.



