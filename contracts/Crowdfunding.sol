// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Crowdfunding {
  enum State { Ongoing, Failed, Succeded, PaidOut }

  string public name;
  uint public targetAmount;
  uint public fundingDeadline;
  address payable public beneficiary;
  State public state;

  constructor(
    string memory campaignName,
    uint targetAmountEth,
    uint durationInMin,
    address payable beneficiaryAddress
  )
  {
    name = campaignName;
    targetAmount = targetAmountEth * 1 ether;
    fundingDeadline = currentTime() + durationInMin * 1 minutes;
    beneficiary = beneficiaryAddress;
    state = State.Ongoing;
  }

  function currentTime() private view returns(uint) {
    return block.timestamp;
  }
}
