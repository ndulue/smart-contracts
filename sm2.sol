pragma solidity >=0.4.22 <0.7.0;

contract MyContract {
    uint256[] public uintArray = [1,2,3];
    string[] public values;
    string[] public fruits = ["apple", "banana", "paw paw"];
    uint[][] public array2D = [ [1,2,3], [6,6,7] ];
    
    
    function addValues(string memory _values) public {
        values.push(_values);
    }
    
    function countValues() public view returns(uint) {
        return values.length;
    }
    
}