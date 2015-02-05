(function (){
  var app = angular.module('application', []);
  app.controller('LearnController', function () {
    this.user = user;
  });

  var users = [
    {
      firstName: "Leo",
      lastName: "Lee",
      gender: "Male",
      age: 24
    },
    {
      firstName: "Rebekah",
      lastName: "Lester",
      gender: "Female",
      age: 22
    }
  ];
})();
