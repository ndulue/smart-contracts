pragma solidity >=0.4.22 <0.7.0;

contract myContract{
    
    uint256[] public array = [1,2,3,4,5,6,7,8];
    
    address public owner;
    
    constructor(){
        owner = msg.sender;
    }
    
    
    function countNumber()public view returns(uint256){
        
        uint count = 0;
        
        for(uint i = 0; i < array.length; i++){
            if(isEven(array[i])){
                count++;
            }
        }
        
        return count;
        
    }
    
    function isEven(uint256 _numb) public view returns(bool) {
        if(_numb % 2 == 0){
            return true;
        } else {
            return false;
        }
    }
    
    function isOwner() public view returns(bool){
        if(msg.owner == owner){
            return true;
        } else {
            return false;
        }
    }
    
}