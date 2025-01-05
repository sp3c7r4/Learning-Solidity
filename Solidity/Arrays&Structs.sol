// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // Stating our version

contract SimpleStorage {
    uint myFavouriteNumber; // 0
    //uint256[] listOfFavoriteNumbers; 
    /*   0    1    2    */
    /* [ 0 , 70 , 90 ] */

    struct Person {
        uint256 favouriteNumber;
        string name;
    }
    //Array of people [ Dynamic Array ]
    Person[] public listOfPeople;
    /* 
    Static Array 
    Person[3] public listOfPeople;
    */
    // Person public spectra = Person({ favouriteNumber: 7, name:"Spectra"});

    function store(uint256 _favouriteNumber) public {
        myFavouriteNumber = _favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        // Person memory newPerson = Person(_favouriteNumber, _name);
        listOfPeople.push(Person(_favouriteNumber, _name));
    }

    function retrieve() public view returns(uint256) {
        return myFavouriteNumber;
    }
}