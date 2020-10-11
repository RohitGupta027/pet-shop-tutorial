pragma solidity ^0.5.0;

contract Adoption {
    address[16] public adopters; // Addresses are Ethereum addresses, stored as 20 byte values

    //event Adopted(address _from, uint _petId);

    function adopt(uint256 petId) public returns (uint256) {
        require(petId >= 0 && petId <= 15);
        //     require(adopters[petId] != address(0));
        adopters[petId] = msg.sender;
        //     emit Adopted(msg.sender, petId);
        return petId;
    }

    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}
