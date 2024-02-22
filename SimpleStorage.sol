// SPDX-License-Identifier: MIT License
pragma solidity 0.8.19; //current compiler is 0.8.19 but in remix it is 0.8.24

contract SimpleStorage {
  // Basic Types:
  // booleans, Integers - int (positive or negative whole numbers), uint (positive whole number), address, bytes
  uint256 public favoriteNumber; // default at 0


  // changes the state of our contract data.
  function store(uint256 _favoriteNumber) public {
    favoriteNumber = _favoriteNumber;

  }

//view, pure are keywords that doesnt affect the contract data but you can still run them.
// view keyword disallows modification of state.
// pure keyword disallows modification of state and even reading it from state or storage! 
  function retrieve() public view returns(uint256){
    return favoriteNumber; 
  }
}