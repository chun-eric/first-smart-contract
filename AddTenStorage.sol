// SPDX-License-Identifier: MIT License

pragma solidity 0.8.19;


import {SimpleStorage} from "./SimpleStorage.sol";


// imports the SimpleStorage
// uses the store method and modifies the SimpleStorage contract  from this contract
contract AddTenStorage is SimpleStorage {
  function store(uint256 _favoriteNumber) public override {
    favoriteNumber = _favoriteNumber + 10;
  }
}