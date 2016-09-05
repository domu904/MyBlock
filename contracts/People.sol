contract People {
  Person[] public people;

  struct Person {
    string firstName;
    string lastName;
    uint age;
  }

  function addPerson(string _firstName, string _lastName, uint _age) returns (bool success) {
      //saving it into memory in evm. It is free and doesn't cost gas
      Person memory newPerson;
      newPerson.firstName = _firstName;
      newPerson.lastName = _lastName;
      newPerson.age = _age;

      //saving it into the blockchain. This will cost gas
      people.push(newPerson);
      return true;
  }

  //solidity can't return structs. so we will return the following array if strings and uint
  function getPeople() constant returns (string[], string[], uint[]) {

  }

}
