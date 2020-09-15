pragma solidity >=0.4.22 <0.7.0;

contract myContract{
    
    mapping(uint256 => string) public names;
    mapping(uint256 => Book) public books;
    
    
    struct Book{
        uint256 numb;
        string title;
    }
    
    constructor() public {
        names[1] = "emeka";
        names[2] = "ndulue";
        names[3] = "philip";
    }
    
    function addBooks(uint256 _id, uint256 _numbs, string memory _title) public {
        books[_id] = Book(_numbs, _title);
    }
    
}