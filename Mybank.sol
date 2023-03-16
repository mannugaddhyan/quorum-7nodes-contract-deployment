// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyBank
{
    //stores contract balance
    uint256 private contractBalance; 
    //mapping which shows how much ether every address has deposited.
    mapping(address => uint256) private mpp;
    mapping(address => uint256) private timeMap;
    uint256 rate = 18;
    function checkContractBalance() public view returns(uint256){
        return contractBalance;
    }
    function getUserBalance() public view returns(uint256) {
        uint256 timePassed = block.timestamp - timeMap[msg.sender];
        uint256 amount = mpp[msg.sender] + uint256((mpp[msg.sender]*rate* timePassed)/31536000*100);
        return amount;
    }

    function rechargeContract() payable public  {
        contractBalance+=msg.value;
    }

    function depositMoney() payable public {
        mpp[msg.sender] += msg.value;
        contractBalance+=msg.value;
        timeMap[msg.sender] = block.timestamp;
    }

    function withdraw() public {
        uint256 timePassed = block.timestamp - timeMap[msg.sender];
        address payable _myAddress = payable(msg.sender);
        uint256 amount = mpp[msg.sender] + uint256((mpp[msg.sender]*rate* timePassed)/31536000*100);
        _myAddress.transfer(amount);
        mpp[msg.sender] = 0;
        contractBalance-= amount;

    }



}