# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{
    username: "Marty", firstname: "Marty", lastname: "McFly",
    password: "12345678",
    profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1472768592/mcfly_dulxaw.jpg",
    gender: "M", birthdate: Date.new(1968, 6, 12), description: "Nobody calls me chicken"
  },{
    username: "Doc_Brown", firstname: "Emmett", lastname: "Brown",
    password: "12345678",
    profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1472768597/doc_brown_xz9jjg.png",
    gender: "M",
    birthdate: Date.new(1914, 5, 20), description: "Great scott!!"
  }, {
    username: "Bill", firstname: "Bill", lastname: "Preston", password: "12345678",
    profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1472768591/Bill_d9vzzg.jpg",
     gender: "M", birthdate: Date.new(1965, 7, 17),
    description: "Most bodacious!"
  }, {
    username: "Ted", firstname: "Ted", lastname: "Logan", password: "12345678",
    profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1472768614/ted_no40js.png",
    gender: "M", birthdate: Date.new(1964, 9, 2),
    description: "Dude!"
  }, {
    username: "Doctor_Who", firstname: "The", lastname: "Doctor", password: "12345678",
    profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1472768593/doctor_tl3d5n.jpg",
    gender: "M", birthdate: Date.new(0),
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  }, {
    username: "Time_Traveler", firstname: "H.G.", lastname: "Wells", password: "12345678",
    profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1472768594/hgwells_cgnji4.jpg", 
    gender: "M", birthdate: Date.new(1866, 9, 21),
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  }]);

  sites = Site.create([{
    user_id: 1, city: "Hill Valley, CA", start_date: Date.new(1985, 10, 25),
    end_date: Date.new(1990, 5, 25), accepting_guests: false
  }, {
    user_id: 2, city: "Hill Valley, CA", start_date: Date.new(1955, 11, 5),
    end_date: Date.new(1990, 5, 25), accepting_guests: true
  }, {
    user_id: 3
  }, {
    user_id: 4
  }, {
    user_id: 5
  }, {
    user_id: 6
  }])
