# 🤝 Commitment Smart Contract

A minimal Solidity smart contract designed to facilitate a transparent and on-chain commitment between two parties. Each party agrees on a set of terms and a deadline, and the contract tracks whether the agreement has been fulfilled.

---

## 📜 Description

This project allows two participants to commit to an agreement with:
- A shared **agreement string** (e.g., “Complete the project by July 2025”)
- A fixed **deadline** (as a Unix timestamp)
- On-chain **status tracking**

The contract supports marking the agreement as met or failed and provides a transparent log of commitment status, ensuring mutual accountability and trust.

---

## 🔧 Features

- 🧑‍🤝‍🧑 Define two participant addresses for a bilateral commitment
- 📄 Custom agreement terms (e.g., project completion, deadlines)
- ⏳ Enforces **deadline** using Unix timestamp
- ✅ Functions to **check** and **update** agreement status
- 🔐 Access control for participant-only actions

---

## 🛠 Built With

- **Solidity**: For smart contract development
- **Remix IDE**: Web-based IDE for contract deployment
- **Ethereum-compatible networks**: Can be deployed on mainnet, testnets, or rollups like Base, Optimism, etc.

---

## 🚀 Getting Started

### Deploying via Remix

1. Open [Remix IDE](https://remix.ethereum.org)
2. Paste the contract code into a new `.sol` file
3. Compile the contract
4. In the **Deploy & Run Transactions** tab:
   - Set the constructor parameters:
     - `participant1`: address (e.g., your wallet)
     - `participant2`: address (e.g., a friend’s wallet)
     - `agreement`: string (e.g., `"Finish joint research by Oct 1"`)
     - `deadline`: Unix timestamp (e.g., `1759372800`)
5. Click **Deploy** to deploy the contract
6. Interact with the deployed contract via Remix UI (call functions like `checkCommitment`, `markAgreementMet`)

---

## 🧪 Usage

### Constructor

```solidity
CommitmentContract(
  address _participant1,
  address _participant2,
  string memory _agreement,
  uint _deadline
)
Key Functions
checkCommitment() — View full agreement details

markAgreementMet() — Mark the agreement as fulfilled (only by participant)

markAgreementFailed() — Mark the agreement as failed

getStatus() — Returns: "Pending", "Met", or "Failed"

getDeadline() — View the set deadline (Unix timestamp)

💡 Example Use Case
Two developers working on a grant-funded project agree to complete it by a specific date. To ensure mutual commitment and accountability, they deploy this smart contract to log the agreement. Later, they can mark the agreement outcome (Met or Failed) transparently on-chain.

📜 License
This project is licensed under the MIT License. See the LICENSE file for more details.

🙋‍♂️ Author
Muqaddad Elfaki
Software Engineer | Blockchain & Web3 Enthusiast
GitHub: @0Elfaki
Email: megdadlearn@gmail.com
