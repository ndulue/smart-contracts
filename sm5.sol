pragma solidity >=0.4.22 <0.7.0;

contract HotelRoom{
    
    enum Status { Vacant, Booked }
    Status currentStatus;
    
    event Occupy(address _occupant, uint _value)
    
    address payable public owner;
    
    constructor() public {
        owner = msg.sender;
        currentStatus = Status.Vacant;
    }
    
    modifier onlyWhileVacant(){
        require (currentStatus == Status.Vacant, "Room already Occupied" );
        _;
    }
    
    modifier costs (uint256 _amount) {
        require (msg.value >= _amount, "Insufficient balance");
        _;
    }
    
    /*
    
    function book() public payable onlyWhileVacant costs(2 ether) {
        currentStatus = Status.Booked;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
    
    */
    
    receive() external payable onlyWhileVacant costs(2 ether){
        currentStatus = Status.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
    
}