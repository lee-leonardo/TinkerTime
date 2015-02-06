(function (){
  var app = angular.module('application', []);
  app.controller('LearnController', function () {
    this.users = users;
  });
  app.controller('TabController', function () {
    this.tab = 1;
    this.selectedTab = function ( select ) {
      this.tab = select;
    };
    this.isSelected = function ( select ) {
      return this.tab === select;
    };
  });

  var users = [
    {
      firstName: "Leo",
      lastName: "Lee",
      gender: "Male",
      age: 24,
      description: "",
      hobbies: [],
      skills: [],
      nickname: ""
    },
    {
      firstName: "Rebekah",
      lastName: "Lester",
      gender: "Female",
      age: 22,
      description: "",
      hobbies: [],
      nickname: ""
    },
    {
      firstName: "Ben",
      lastName: "Duyker",
      gender: "Male",
      age: 16,
      description: "",
      hobbies: [],
      nickname: ""
    },
    {
      firstName: "Richard",
      lastName: "Lee",
      gender: "Male",
      age: 20,
      description: "",
      hobbies: [],
      nickname: ""
    },
    {
      firstName: "Alex",
      lastName: "Lee",
      gender: "Male",
      age: 23,
      description: "",
      hobbies: [],
      nickname: ""
    },
    {
      firstName: "Mario",
      lastName: "Kart",
      gender: "Female",
      age: 64,
      description: "",
      hobbies: [],
      nickname: ""
    },
    {
      firstName: "Misubishi",
      lastName: "Lancer",
      gender: "Female",
      age: 2,
      description: "",
      hobbies: [],
      nickname: ""
    }
  ];
})();
