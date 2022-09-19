pragma solidity ^0.7.0;

contract sample{

    // reciver eth account address
    address payable reciever = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    
    // func to send eth from sender to contract
    // use payable bcoz eth flowing from acc to contract
    function sendEth() public payable{
    }
    // func to check balance in contract
    function getBal() public view returns(uint){
        // this is used to for current deployed account or contract
        return address(this).balance;
    }
    // func to send eth from contract to reciver account
    // not to use payable bcoz eth flowing from contract to account
    function sendEthAcc() public{
        reciever.transfer(1 ether);
    }
}
