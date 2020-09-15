pragma solidity >=0.4.22 <0.7.0;

contract myContract{
    string public myString = "Hello emeka";
    bytes32 public myByte = "Hello emeka";
    uint256 public myUint = 34;
    int256 public myInt = 323;
    address public myAddress = 0x320fddfD1aAE5A3F5e95a5ACbFbb3633935DaD2b;
    
    struct MyDeal{
        uint256 dealsNumber;
        string dealDetails;
    }
    
    MyDeal public myDeal = MyDeal(34, "Cars");
    
    
    function getString() public view returns(uint256){
        return myUint;
    } 
    
}