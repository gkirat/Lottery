// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Lottery
{
    address public manager;
    address payable[] public playersadd;
    
    constructor () {
        manager = msg.sender;
    }
    
    receive () external payable{
    }

    modifier owner() {
        require (msg.sender == manager);
        _;
    }


    // function enteredplayers() view private {
    //     for (uint i=0;i<playersadd.length;i++ ){}
    // }

    function entry() payable public {
       
        playersadd.push(payable(msg.sender));
        require (msg.sender != manager,"manager not allowed");
        require (msg.value >= 1000000000000000000 ,"Ticket size is fixed");
         
    }
   



    function checkbal()   public view owner returns (uint)
    {
        return address(this).balance;
    }


    // this function is used to generate a random number from which pick winner
    function random() public view owner returns (uint)
    {
       return uint  (keccak256(abi.encodePacked(block.difficulty,block.timestamp,playersadd.length)));
        
    }


    // this function is used to pick winner
    function pickwinner () public  owner 
    {
        require (playersadd.length>3,"Minimum players required");
        address payable winner;
        uint index = random() % playersadd.length;
        winner = playersadd[index];
        winner.transfer(checkbal());
        playersadd = new address payable[](0);  // for resetting the lottery contract after the winner is picked

    }
}
