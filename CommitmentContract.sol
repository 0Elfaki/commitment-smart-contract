// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LoveContract {
    address public person1;
    address public person2;
    string public agreement;
    uint public deadline;
    bool public agreementMet;

    event AgreementCreated(address person1, address person2, string agreement, uint deadline);
    event CommitmentChecked(bool met, uint timestamp);
    event PenaltyEnforced(address person, uint timestamp);

    constructor(address _person1, address _person2, string memory _agreement, uint _deadline) {
        person1 = _person1;
        person2 = _person2;
        agreement = _agreement;
        deadline = _deadline;
        agreementMet = false;
        emit AgreementCreated(_person1, _person2, _agreement, _deadline);
    }

    // Check if the commitment is met
    function checkCommitment() public {
        require(block.timestamp <= deadline, "The agreement deadline has passed.");
        if (block.timestamp >= deadline && !agreementMet) {
            enforcePenalty();
        }
        emit CommitmentChecked(agreementMet, block.timestamp);
    }

    // Enforce penalty if agreement is not met
    function enforcePenalty() internal {
        address penaltyAddress = (msg.sender == person1) ? person2 : person1;
        // Example: transfer a small penalty fee (e.g., in ethers or a token)
        payable(penaltyAddress).transfer(1 ether);  // Just an example, can be replaced with real logic
        emit PenaltyEnforced(penaltyAddress, block.timestamp);
    }

    // Allow participants to mark the agreement as met
    function markAgreementMet() public {
        require(msg.sender == person1 || msg.sender == person2, "Only the participants can mark the agreement.");
        agreementMet = true;
    }

    // Function to fund the contract
    receive() external payable {}
}
