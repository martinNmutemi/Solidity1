// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract simplestorage {

    // bool hasFavoriteNumber = true;
    // string favoriteNumberText= "five";
    // int favoriteInt = 5;
    // address myAddress = 0xe51DA63e4A29e23DCdC7Ba4316a404B793d97cE5;

    // uint256 public favoriteNumber; 

    // People public Person = People({Age: 28, Name: "Martin"});
    // People public Person2 = People({Age: 30, Name: "Daniel"});

    mapping (string => uint256) public nameToAge;

    struct People {
        string Name;
        uint256 Age;

    }

    People[] public Person;

    // function store(uint _favoriteNumber) public {
    //     favoriteNumber = _favoriteNumber;
    //     favoriteNumber = favoriteNumber + 1;
    // }

    function addPerson(string memory _name, uint256 _age) public {

        // Person.push(People(_name, _age));
        
        People memory newPerson = People({ Name: _name, Age: _age});
        Person.push(newPerson);
        nameToAge[_name] = _age;
    }

    // function retrieve() public view returns (uint256) {
    //     return favoriteNumber;
    // }






}