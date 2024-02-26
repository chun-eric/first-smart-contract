// SPDX-License-Identifier: MIT License
pragma solidity 0.8.19; //current compiler is 0.8.19 but in remix it is 0.8.24

contract SimpleStorage {
  // Basic Types:
  // booleans, Integers - int (positive or negative whole numbers), uint (positive whole number), address, bytes
  uint256 public favoriteNumber; // default at 0


  // structs and arrays
  struct Person {
    uint256 personFavoriteNumber;
    string personName;
  }

  // Person public person1 = Person({ personFavoriteNumber: 8, personName: "Steve"});

  // How can we allow Person struct to allow for many people? A dynamic array.
  Person[] public listOfPeople;

  // To access a key with a value with lots of data inside a mapping structure is excellent.
  mapping(string => uint256) public nameToFavoriteNumber;


  // changes the state of our contract data.
  function store(uint256 _favoriteNumber) public virtual {
    favoriteNumber = _favoriteNumber;

  }
 
  //view, pure are keywords that doesnt affect the contract data but you can still run them.
  // view keyword disallows modification of state.
  // pure keyword disallows modification of state and even reading it from state or storage! 
  function retrieve() public view returns(uint256){
    return favoriteNumber; 
  }

  // function that pushes new people into our list of Person.
  function addPerson(string memory _personName, uint256 _personFavoriteNumber ) public {
      // add to listOfPeople array
      listOfPeople.push(Person(_personFavoriteNumber,_personName));
      
      // add mapping structure so we can easily search for it. eg "John" -> 193;
      nameToFavoriteNumber[_personName] = _personFavoriteNumber;
  }
}