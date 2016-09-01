# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{
    username: "Marty", firstname: "Marty", lastname: "McFly",
    password: "12345678", profile: "assets/mcfly.JPG",
    gender: "M", birthdate: Date.new(1968, 6, 12), description: "Nobody calls me chicken"
  },{
    username: "Doc_Brown", firstname: "Emmett", lastname: "Brown",
    password: "12345678", profile: "assets/doc_brown.png", gender: "M",
    birthdate: Date.new(1914, 5, 20), description: "Great scott!!"
  }, {
    username: "Bill", firstname: "Bill", lastname: "Preston", password: "12345678",
    profile: "assets/Bill.jpg", gender: "M", birthdate: Date.new(1965, 7, 17),
    description: "Most bodacious!"
  }, {
    username: "Ted", firstname: "Ted", lastname: "Logan", password: "12345678",
    profile: "assets/ted.png", gender: "M", birthdate: Date.new(1964, 9, 2),
    description: "Dude!"
  }, {
    username: "Doctor_Who", firstname: "The", lastname: "Doctor", password: "12345678",
    profile: "assets/doctor.jpg", gender: "M", birthdate: Date.new(0),
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  }, {
    username: "Time_Traveler", firstname: "H.G.", lastname: "Wells", password: "12345678",
    profile: "assets/hgwells.jpg", gender: "M", birthdate: Date.new(1866, 9, 21),
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  }]);

  sites = Site.create([{
    user_id: 1
  }, {
    user_id: 2
  }, {
    user_id: 3
  }, {
    user_id: 4
  }, {
    user_id: 5
  }, {
    user_id: 6  
  }])
