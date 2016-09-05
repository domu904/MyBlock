contract('People', function(ListPeople) {
  it("should list all the people", function() {
    var people = People.deployed();

    return people.getPeople.call().then(function(ListPeople) {      
    });
  });
});
