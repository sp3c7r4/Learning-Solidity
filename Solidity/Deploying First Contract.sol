// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(String => uint256) public nameOfFavouriteNumber;

    function store(uint256 _favouriteNumber) public {
        myFavoriteNumber = _favouriteNumber
    }

    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person(_favoriteNumber, _name) );
        nameeToFavoriteNumber[_name] = _favoriteNumber;
    }
}