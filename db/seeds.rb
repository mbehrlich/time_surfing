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
    user_id: 1, city: "Hill Valley", lat: 34.238936, lng: -118.433554,
     start_date: Date.new(1985, 10, 25), address: "9303 Roslyndale Avenue",
    end_date: Date.new(1990, 5, 25), accepting_guests: true
  }, {
    user_id: 2, city: "Hill Valley", lat: 34.151733, lng: -118.160890,
     start_date: Date.new(1955, 11, 5),
    end_date: Date.new(1990, 5, 25), accepting_guests: true
  }, {
    user_id: 3, city: "San Dimas", lat: 34.108146, lng: -117.807089,
    start_date: Date.new(1988, 1, 1), end_date: Date.new(2050, 8, 13),
    accepting_guests: true
  }, {
    user_id: 4, city: "San Dimas", lat: 34.110660, lng: -117.804922,
    start_date: Date.new(1988, 1, 1), end_date: Date.new(2050, 8, 13),
    accepting_guests: true
  }, {
    user_id: 5, city: "London", lat: 51.467677, lng: -0.023359,
    start_date: Date.new(-1000, 1, 1), end_date: Date.new(5000, 1, 1),
    accepting_guests: true
  }, {
    user_id: 6, lat: 51.324500, lng: -0.543267, start_date: Date.new(1880, 1, 1),
    end_date: Date.new(1946, 8, 13), accepting_guests: true, city: "London"
  }])

  bookings = Booking.create([{
    guest_id: 1, site_id: 2, start_date: Date.new(1955, 11, 5),
    end_date: Date.new(1955, 11, 12), guests: 1
  }, {
    guest_id: 3, site_id: 1, start_date: Date.new(1986, 3, 15),
    end_date: Date.new(1986, 3, 22), guests: 2
  }])

  User.create({
    username: "Hammurabi", password: "12345678", firstname: "Hammurabi", lastname: "I",
    profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473178286/557593e4afc32_hammurabi_ogbijh.jpg",
    birthdate: Date.new(-1810, 5, 12), gender: "M",
    description: "I enforce a strict code of rules for guests"
  })

  Site.create({
    user_id: 7, lat: 32.536389, lng: 44.420833,
    start_date: Date.new(-1792, 6, 8), end_date: Date.new(-1750, 9, 14),
    max_guests: 100, accepting_guests: true, city: "Babylon",
    description: "If one guest does not clean up in the kitchen after he has used it, he will be put to death. If one guest eats the food of another guest, he will be put to death."
  })

  User.create({
    username: "Leonidas", password: "12345678", firstname: "Leonidas",
    lastname: "II",
    profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473179745/smg_king_leonidas_rpvxaw.jpg",
    birthdate: Date.new(-274, 7, 1), gender: "M",
    description: "THIS IS COUCHSURFING"
  })

  Site.create({
    user_id: 8, lat: 37.072953, lng: 22.430603,
    start_date: Date.new(-254, 3, 19), end_date: Date.new(-235, 8, 10),
    max_guests: 100, accepting_guests: true, city: "Sparta",
    description: "Go tell the Spartan, passerby, here by Spartan law we lie."
  })

  User.create({
    username: "King_Tut", password: "12345678", firstname: "Tutenkhamun",
    lastname: "I",
    profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473180309/KingTut3_o0msq2.jpg",
    birthdate: Date.new(-1341, 7, 20), gender: "M",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  })

  Site.create({
    user_id: 9 , lat: 25.740222, lng: 32.601333,
    start_date: Date.new(-1332, 8, 12), end_date: Date.new(-1323, 10, 5),
    max_guests: 100, accepting_guests: true, city: "Egypt",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  })

  User.create({
    username: "Aristotle", password: "12345678", firstname: "Aristotle",
    lastname: "of Athens",
    profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473180711/87984-004-5ADE9ACA_luvngt.jpg",
    birthdate: Date.new(-384, 10, 1), gender: "M",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  })

  Site.create({
    user_id: 10, lat: 37.988261, lng: 23.727696,
    start_date: Date.new(-364, 4, 21), end_date: Date.new(-322, 1, 29),
    max_guests: 100, accepting_guests: true, city: "Athens",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  })

  User.create({
    username: "Socrates", password: "12345678", firstname: "Socrates",
    lastname: "of Athens",
    profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473181188/75569-004-3B260631_obpsbs.jpg",
    birthdate: Date.new(-470, 7, 3), gender: "M",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  })

  Site.create({
    user_id: 11, lat: 37.990278, lng: 23.732143,
    start_date: Date.new(-435, 8, 7), end_date: Date.new(-399, 1, 2),
    max_guests: 100, accepting_guests: true, city: "Athens",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  })

  User.create({
    username: "Alexander", password: "12345678", firstname: "Alexander",
    lastname: "the Great",
    profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473181661/alexander-the-great_mh2xz9.jpg",
    birthdate: Date.new(-356, 7, 20), gender: "M",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  })

  Site.create({
    user_id: 12, lat: 40.762033, lng: 22.525937,
    start_date: Date.new(-336, 8, 9), end_date: Date.new(-323, 6, 10),
    max_guests: 100, accepting_guests: true, city: "Pella",
    description: "I have lots of places you can stay. LOTS of places."
  })

  User.create({
    username: "Moses", password: "12345678", firstname: "Moses",
    lastname: "the Prophet",
    profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473181939/charlton-heston-as-moses-in-the-ten-commandments_q4ikmx.jpg",
    birthdate: Date.new(-1400, 4, 5), gender: "M",
    description: "Thou shalt stay with me!"
  })

  Site.create({
    user_id: 13, lat: 29.561437, lng: 33.818605,
    start_date: Date.new(-1380, 3, 8), end_date: Date.new(-1201, 2, 2),
    max_guests: 100, accepting_guests: true, city: "Mount Sinai",
    description: "Thou shalt not overstay thy welcome."
  })

  User.create({
    username: "Hannibal", password: "12345678", firstname: "Hannibal",
    lastname: "Barca",
    profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473182763/hannibal_barca_by_jason_zhou_01__sized_center_m_cvz5xe.jpg",
    birthdate: Date.new(-247, 5, 7), gender: "M",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  })

  Site.create({
    user_id: 14 , lat: 36.867681, lng: 10.333142,
    start_date: Date.new(-220, 8, 12), end_date: Date.new(-181, 7, 8),
    max_guests: 100, accepting_guests: true, city: "Carthage",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  })

User.create({
  username: "Scipio", password: "12345678", firstname: "Scipio",
  lastname: "Africanus",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473183001/051111_0727LM_L_mjplej.jpg",
  birthdate: Date.new(-236, 6, 5), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 15, lat: 41.893913, lng: 12.488433,
  start_date: Date.new(-205, 8, 7), end_date: Date.new(-183, 3, 12),
  max_guests: 100, accepting_guests: true, city: "Rome",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Caesar", password: "12345678", firstname: "Julius",
  lastname: "Caesar",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473183285/julius_caesar2_cb4jsc.jpg",
  birthdate: Date.new(-100, 7, 13), gender: "M",
  description: "Veni, Vidi, Vici"
})

Site.create({
  user_id: 16, lat: 41.892976, lng: 12.485420,
  start_date: Date.new(-70, 8, 10), end_date: Date.new(-44, 3, 15),
  max_guests: 100, accepting_guests: true, city: "Rome",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Cleopatra", password: "12345678", firstname: "Cleopatra",
  lastname: "Philopator",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473183660/Cleopatra_n6qk9s.png",
  birthdate: Date.new(-69, 2, 7), gender: "F",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 17, lat: 31.204125, lng: 29.908793,
  start_date: Date.new(-51, 7, 10), end_date: Date.new(-30, 8, 12),
  max_guests: 100, accepting_guests: true, city: "Alexandria",
  description: "No asps allowed"
})

User.create({
  username: "Pompey", password: "12345678", firstname: "Pompey",
  lastname: "Magnus",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473183989/imgres_zqtgwf.jpg",
  birthdate: Date.new(-106, 9, 29), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 18, lat: 41.889542, lng: 12.483120,
  start_date: Date.new(-83, 5, 17), end_date: Date.new(-48, 9, 29),
  max_guests: 100, accepting_guests: true, city: "Rome",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Augustus", password: "12345678", firstname: "Augustus",
  lastname: "I",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473184350/Augustus_of_Rome_dfcwjk.jpg",
  birthdate: Date.new(-63, 9, 23), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 19, lat: 41.903021, lng: 12.505786,
  start_date: Date.new(-27, 1, 16), end_date: Date.new(14, 8, 19),
  max_guests: 100, accepting_guests: true, city: "Rome",
  description: "Come stay during August!"
})

User.create({
  username: "Marc_Antony", password: "12345678", firstname: "Marc",
  lastname: "Antony",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473184685/13421-004-A2A61DF4_jxeehe.jpg",
  birthdate: Date.new(-83, 1, 14), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 20, lat: 41.904810, lng: 12.486597,
  start_date: Date.new(-60, 7, 2), end_date: Date.new(-30, 8, 1),
  max_guests: 100, accepting_guests: true, city: "Rome",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Spartacus", password: "12345678", firstname: "Spartacus",
  lastname: "the Gladiator",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473185227/Spartacus-by-hercxena.wikiadotcom_jr2moh.jpg",
  birthdate: Date.new(-111, 5, 30), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 21, lat: 40.824318, lng: 14.435257,
  start_date: Date.new(-90, 5, 6), end_date: Date.new(-71, 8, 30),
  max_guests: 100, accepting_guests: true, city: "Mount Vesuvius",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Jesus", password: "12345678", firstname: "Jesus",
  lastname: "Christ",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473185615/JesusWhite_gtkrgq.jpg",
  birthdate: Date.new(1, 12, 25), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 22, lat: 31.777039, lng: 35.189777,
  start_date: Date.new(20, 5, 13), end_date: Date.new(33, 4, 15),
  max_guests: 100, accepting_guests: true, city: "Jerusalem",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Constantine", password: "12345678", firstname: "Constantine",
  lastname: "I",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473185812/EmperorConstantine_k6rmyc.jpg",
  birthdate: Date.new(272, 2, 27), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 23, lat: 41.004292, lng: 28.977182,
  start_date: Date.new(306, 7, 25), end_date: Date.new(337, 5, 22),
  max_guests: 100, accepting_guests: true, city: "Constantinople",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Cicero", password: "12345678", firstname: "Marcus Tullius",
  lastname: "Cicero",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473186183/Cicero_jvbib2.png",
  birthdate: Date.new(-106, 1, 3), gender: "M",
  description: "This isn't filler text. I'm the guy that actually wrote this. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 24, lat: 41.262230, lng: 13.628956,
  start_date: Date.new(-80, 7, 1), end_date: Date.new(-43, 12, 7),
  max_guests: 100, accepting_guests: true, city: "Rome",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Muhammad", password: "12345678", firstname: "Muhammad",
  lastname: "the Prophet",
  birthdate: Date.new(570, 3, 19), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 25, lat: 21.428766, lng: 39.828257,
  start_date: Date.new(590, 4, 13), end_date: Date.new(632, 6, 8),
  max_guests: 100, accepting_guests: true, city: "Mecca",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Attila_the_Hun", password: "12345678", firstname: "Attila",
  lastname: "the Hun",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473186712/20060924_223207_atilla_lzsl2r.jpg",
  birthdate: Date.new(406, 11, 5), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 26, lat: 46.721964, lng: 20.920781,
  start_date: Date.new(434, 10, 4), end_date: Date.new(453, 5, 7),
  max_guests: 100, accepting_guests: true, city: "nomadic",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Sun Tzu", password: "12345678", firstname: "Sun",
  lastname: "Tzu",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473186997/1460086349858_krtexa.jpg",
  birthdate: Date.new(-544, 8, 7), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 27, lat: 31.300000, lng: 120.600000,
  start_date: Date.new(-522, 4, 3), end_date: Date.new(-496, 7, 12),
  max_guests: 100, accepting_guests: true, city: "Wu",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Confucius", password: "12345678", firstname: "Confucius",
  lastname: "the Philosopher",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473187217/MTE5NDg0MDU0OTMwNjg3NTAz_if3aq5.jpg",
  birthdate: Date.new(-551, 9, 28), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 28, lat: 35.619344, lng: 117.027841,
  start_date: Date.new(-531, 3, 8), end_date: Date.new(-479, 2, 10),
  max_guests: 100, accepting_guests: true, city: "Lu",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Buddha", password: "12345678", firstname: "Gautama",
  lastname: "Buddha",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473187643/buddh_xci3q7.jpg",
  birthdate: Date.new(-563, 10, 8), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 29, lat: 24.694517, lng: 84.987685,
  start_date: Date.new(-543, 9, 10), end_date: Date.new(-483, 10, 1),
  max_guests: 100, accepting_guests: true, city: "Bodh Gaya",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Leonardo_da_Vinci", password: "12345678", firstname: "Leonardo",
  lastname: "da Vinci",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473187959/leonardo-da-vinci_nfyaif.jpg",
  birthdate: Date.new(1452, 4, 15), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 30, lat: 43.777226, lng: 11.253499,
  start_date: Date.new(1478, 3, 19), end_date: Date.new(1519, 5, 2),
  max_guests: 100, accepting_guests: true, city: "Florence",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Henry_VIII", password: "12345678", firstname: "Henry",
  lastname: "VIII",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473188356/henry_viii_bjabgx.jpg",
  birthdate: Date.new(1491, 6, 28), gender: "M",
  description: "Watch your neck when you're staying with me."
})

Site.create({
  user_id: 31, lat: 51.403606, lng: -0.337945,
  start_date: Date.new(1509, 4, 21), end_date: Date.new(1547, 1, 28),
  max_guests: 100, accepting_guests: true, city: "London",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "William_the_Conqueror", password: "12345678", firstname: "William",
  lastname: "the Conqueror",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473188620/William_the_Conqueror-painted_ca_1620_Annonymous_gdedja.jpg",
  birthdate: Date.new(1028, 3, 6), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 32, lat: 48.893696, lng: -0.202207,
  start_date: Date.new(1066, 12, 25), end_date: Date.new(1087, 9, 9),
  max_guests: 100, accepting_guests: true, city: "Normandy",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Joan_of_Arc", password: "12345678", firstname: "Joan",
  lastname: "of Arc",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473188902/joan-of-arc_hrl92u.jpg",
  birthdate: Date.new(1412, 1, 6), gender: "F",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 33, lat: 48.443056, lng: 5.675833,
  start_date: Date.new(1422, 5, 12), end_date: Date.new(1431, 5, 30),
  max_guests: 100, accepting_guests: true, city: "Domremy",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Shakespeare", password: "12345678", firstname: "William",
  lastname: "Shakespeare",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473189193/MTE1ODA0OTcxNzgzMzkwNzMz_n2mccw.jpg",
  birthdate: Date.new(1564, 4, 26), gender: "M",
  description: "Should I stay, or should I go now, that is the question."
})

Site.create({
  user_id: 34, lat: 52.193907, lng: -1.707989,
  start_date: Date.new(1585, 10, 15), end_date: Date.new(1616, 4, 23),
  max_guests: 100, accepting_guests: true, city: "Stratford-upon-Avon",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Washington", password: "12345678", firstname: "George",
  lastname: "Washington",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473191852/george-washington1_vphdli.jpg",
  birthdate: Date.new(1732, 2, 22), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 35, lat: 38.707460, lng: -77.086264,
  start_date: Date.new(1753, 6, 3), end_date: Date.new(1799, 12, 14),
  max_guests: 100, accepting_guests: true, city: "Mount Vernon",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "John_Adams", password: "12345678", firstname: "John",
  lastname: "Adams",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473192038/220px-US_Navy_031029-N-6236G-001_A_painting_of_President_John_Adams__1735-1826__2nd_president_of_the_United_States__by_Asher_B._Durand__1767-1845_-crop_i2cf48.jpg",
  birthdate: Date.new(1735, 10, 30), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 36, lat: 42.254720, lng: -71.004636,
  start_date: Date.new(1760, 5, 17), end_date: Date.new(1826, 7, 4),
  max_guests: 100, accepting_guests: true, city: "Quincy",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Jefferson", password: "12345678", firstname: "Thomas",
  lastname: "Jefferson",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473192248/MTE5NDg0MDU1MDEwMjQ4MjA3_hkivmn.jpg",
  birthdate: Date.new(1743, 4, 13), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 37, lat: 38.008503, lng: -78.453328,
  start_date: Date.new(1776, 7, 4), end_date: Date.new(1826, 7, 4),
  max_guests: 100, accepting_guests: true, city: "Monticello",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Franklin", password: "12345678", firstname: "Benjamin",
  lastname: "Franklin",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473192452/aa_franklinb_subj_e_nftfoy.jpg",
  birthdate: Date.new(1706, 1, 17), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 38, lat: 39.935205, lng: -75.151685,
  start_date: Date.new(1729, 8, 7), end_date: Date.new(1790, 4, 17),
  max_guests: 100, accepting_guests: true, city: "Philadelphia",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Madison", password: "12345678", firstname: "James",
  lastname: "Madison",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473192708/MTE4MDAzNDEwNjEwMzI1MDA2_mmwnfa.jpg",
  birthdate: Date.new(1751, 3, 16), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 39, lat: 38.218715, lng: -78.168500,
  start_date: Date.new(1781, 5, 30), end_date: Date.new(1836, 3, 16),
  max_guests: 100, accepting_guests: true, city: "Montpelier",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Hamilton", password: "12345678", firstname: "Alexander",
  lastname: "Hamilton",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473193032/MTE5NDg0MDU0OTg3MjQ1MDcx_qkm3tl.jpg",
  birthdate: Date.new(1755, 1, 11), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id:40 , lat: 40.727903, lng: -73.997867,
  start_date: Date.new(1776, 1, 5), end_date: Date.new(1804, 7, 12),
  max_guests: 100, accepting_guests: true, city: "New York",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Hancock", password: "12345678", firstname: "John",
  lastname: "Hancock",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473193229/MTE5NDg0MDU0OTg4MjkzNjQ3_lazz45.jpg",
  birthdate: Date.new(1737, 1, 23), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 41, lat: 42.453667, lng: -71.229000,
  start_date: Date.new(1765, 9, 10), end_date: Date.new(1793, 10, 8),
  max_guests: 100, accepting_guests: true, city: "Boston",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})


User.create({
  username: "Lincoln", password: "12345678", firstname: "Abraham",
  lastname: "Lincoln",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473193419/MTIwNjA4NjMzODg2NTc0MDky_illeao.jpg",
  birthdate: Date.new(1809, 2, 12), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 42, lat: 38.897852, lng: -77.037067,
  start_date: Date.new(1845, 1, 2), end_date: Date.new(1865, 4, 15),
  max_guests: 100, accepting_guests: true, city: "Springfield",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Bobby_Lee", password: "12345678", firstname: "Robert E",
  lastname: "Lee",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473198458/MTE1ODA0OTcxNjk0Nzg2MDYx_crukhm.jpg",
  birthdate: Date.new(1807, 1, 19), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 43, lat: 38.881048, lng: -77.072276,
  start_date: Date.new(1840, 5, 19), end_date: Date.new(1870, 10, 12),
  max_guests: 100, accepting_guests: true, city: "Arlington",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Grant", password: "12345678", firstname: "Ulysses S",
  lastname: "Grant",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473198578/10463FS_DA_090409_worst-grant_hoyatn.jpg",
  birthdate: Date.new(1822, 4, 27), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 44, lat: 40.813656, lng: -73.962584,
  start_date: Date.new(1847, 9, 12), end_date: Date.new(1885, 7, 23),
  max_guests: 100, accepting_guests: true, city: "New York",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Mark_Twain", password: "12345678", firstname: "Mark",
  lastname: "Twain",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473198853/MarkTwainWb_ysejos.jpg",
  birthdate: Date.new(1835, 11, 30), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 45 , lat: 41.766935, lng: -72.701389,
  start_date: Date.new(1865, 10, 10), end_date: Date.new(1910, 4, 21),
  max_guests: 100, accepting_guests: true, city: "Hartford",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Edison", password: "12345678", firstname: "Thomas",
  lastname: "Edison",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473198962/640px-Thomas_Edison2_ifqmgp.jpg",
  birthdate: Date.new(1847, 2, 11), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 46, lat: 40.565103, lng: -74.337929,
  start_date: Date.new(1870, 12, 12), end_date: Date.new(1931, 10, 18),
  max_guests: 100, accepting_guests: true, city: "Menlo Park",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Tesla", password: "12345678", firstname: "Nikola",
  lastname: "Tesla",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473199172/Tesla_circa_1890_ajg5m0.jpg",
  birthdate: Date.new(1856, 7, 10), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 47, lat: 40.752509, lng: -73.994128,
  start_date: Date.new(1884, 3, 13), end_date: Date.new(1943, 1, 7),
  max_guests: 100, accepting_guests: true, city: "New York",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Susan_B", password: "12345678", firstname: "Susan B",
  lastname: "Anthony",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473199499/susan-b-anthony-320x240_yd7oqo.jpg",
  birthdate: Date.new(1820, 2, 15), gender: "F",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 48, lat: 43.153187, lng: -77.628214,
  start_date: Date.new(1840, 9, 13), end_date: Date.new(1906, 3, 13),
  max_guests: 100, accepting_guests: true, city: "Rochester",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "JFK", password: "12345678", firstname: "John F",
  lastname: "Kennedy",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473199731/John_F._Kennedy_48545_vypdsu.png",
  birthdate: Date.new(1917, 5, 29), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 49, lat: 42.316234, lng: -71.034386,
  start_date: Date.new(1943, 4, 5), end_date: Date.new(1963, 11, 22),
  max_guests: 100, accepting_guests: true, city: "Boston",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Nixon", password: "12345678", firstname: "Richard",
  lastname: "Nixon",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473199867/1000509261001_2085990537001_Bio-Biography-Richard-Nixon-SF_mtebby.jpg",
  birthdate: Date.new(1913, 1, 9), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 50, lat: 33.889455, lng: -117.819554,
  start_date: Date.new(1940, 7, 4), end_date: Date.new(1994, 4, 22),
  max_guests: 100, accepting_guests: true, city: "Yorba Linda",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "MLK", password: "12345678", firstname: "Martin Luther",
  lastname: "King Jr.",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473200119/king_vxykdu.jpg",
  birthdate: Date.new(1929, 1, 15), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 51, lat: 33.755276, lng: -84.372640,
  start_date: Date.new(1955, 4, 7), end_date: Date.new(1968, 4, 4),
  max_guests: 100, accepting_guests: true, city: "Atlanta",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Hillary", password: "12345678", firstname: "Hillary",
  lastname: "Clinton",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473200245/MTE4MDAzNDEwMDU4NTc3NDIy_l0fx8j.jpg",
  birthdate: Date.new(1947, 10, 26), gender: "F",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 52, lat: 34.737246, lng: -92.294671,
  start_date: Date.new(1970, 10, 13), end_date: Date.new(2031, 5, 17),
  max_guests: 100, accepting_guests: true, city: "Little Rock",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Trump", password: "12345678", firstname: "Donald",
  lastname: "Trump",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473200508/512501530-republican-presidential-candidate-donald-trump-speaks.jpg.CROP.promo-xlarge2_g8n4nq.jpg",
  birthdate: Date.new(1946, 6, 14), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 53, lat: 40.762313, lng: -73.974231,
  start_date: Date.new(1970, 3, 2), end_date: Date.new(2080, 12, 17),
  max_guests: 100, accepting_guests: true, city: "New York",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Obama", password: "12345678", firstname: "Barack",
  lastname: "Obama",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473200716/photo_n2kwgu.png",
  birthdate: Date.new(1961, 8, 4), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 54, lat: 38.897451, lng: -77.036862,
  start_date: Date.new(1990, 10, 1), end_date: Date.new(2062, 12, 10),
  max_guests: 100, accepting_guests: true, city: "Washington, DC",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Napoleon", password: "12345678", firstname: "Napoleon",
  lastname: "Bonaparte",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473200880/nepolean_bckiy0.jpg",
  birthdate: Date.new(1769, 8, 15), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 55, lat: 48.402061, lng: 2.699195,
  start_date: Date.new(1789, 5, 13), end_date: Date.new(1821, 5, 5),
  max_guests: 100, accepting_guests: true, city: "Paris",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Queen_Marie", password: "12345678", firstname: "Marie",
  lastname: "Antoinette",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473201094/7afd9b349d2203c3d8e78a2e05a24014_jnboqj.jpg",
  birthdate: Date.new(1755, 11, 2), gender: "F",
  description: "Let's eat cake!"
})

Site.create({
  user_id: 56, lat: 48.804589, lng: 2.120001,
  start_date: Date.new(1770, 4, 25), end_date: Date.new(1793, 10, 16),
  max_guests: 100, accepting_guests: true, city: "Versailles",
  description: "Let's eat cake!"
})

User.create({
  username: "Winston", password: "12345678", firstname: "Winston",
  lastname: "Churchill",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473201378/7535-004-99D14F9B_fktok9.jpg",
  birthdate: Date.new(1874, 11, 30), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 57, lat: 51.244090, lng: 0.082450,
  start_date: Date.new(1896, 5, 28), end_date: Date.new(1965, 1, 24),
  max_guests: 100, accepting_guests: true, city: "London",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Gandhi", password: "12345678", firstname: "Mahatma",
  lastname: "Gandhi",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473201954/mahatma_gandhi_imojgt.jpg",
  birthdate: Date.new(1869, 10, 2), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 58, lat: 19.130133, lng: 72.873643,
  start_date: Date.new(1900, 7, 3), end_date: Date.new(1948, 1, 30),
  max_guests: 100, accepting_guests: true, city: "Mumbai",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Mandela", password: "12345678", firstname: "Nelson",
  lastname: "Mandela",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473202245/75567-004-6585DB51_ccgr3s.jpg",
  birthdate: Date.new(1918, 7, 18), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 59, lat: -26.238550, lng: 27.908709,
  start_date: Date.new(1960, 4, 12), end_date: Date.new(2013, 12, 5),
  max_guests: 100, accepting_guests: true, city: "Johannesburg",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Uncle_Joe", password: "12345678", firstname: "Joseph",
  lastname: "Stalin",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473202486/MTE5NTU2MzE2Mzc0NDY4MTA3_uenhlk.jpg",
  birthdate: Date.new(1878, 12, 18), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 60, lat: 55.752011, lng: 37.617188,
  start_date: Date.new(1917, 10, 1), end_date: Date.new(1953, 3, 5),
  max_guests: 100, accepting_guests: true, city: "Moscow",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Chairman_Mao", password: "12345678", firstname: "Mao",
  lastname: "Zedong",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473202725/chairman-mao3_uvebnh.jpg",
  birthdate: Date.new(1893, 12, 26), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 61, lat: 39.902194, lng: 116.397796,
  start_date: Date.new(1927, 4, 19), end_date: Date.new(1976, 9, 9),
  max_guests: 100, accepting_guests: true, city: "Beijing",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Ivan_the_Terrible", password: "12345678", firstname: "Ivan",
  lastname: "the Terrible",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473202955/MTE1ODA0OTcxNjY5NjIwMjM3_omzj2p.jpg",
  birthdate: Date.new(1530, 9, 3), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 62, lat: 55.734012, lng: 37.631785,
  start_date: Date.new(1547, 1, 16), end_date: Date.new(1584, 3, 28),
  max_guests: 100, accepting_guests: true, city: "Moscow",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Dracula", password: "12345678", firstname: "Vlad",
  lastname: "the Impaler",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473204135/Vlad-the-Impaler_yflxuc.jpg",
  birthdate: Date.new(1431, 11, 15), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 63, lat: 45.514804, lng: 25.367024,
  start_date: Date.new(1448, 12, 1), end_date: Date.new(1477, 1, 13),
  max_guests: 100, accepting_guests: true, city: "Wallachia",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Martin_Luther", password: "12345678", firstname: "Martin",
  lastname: "Luther",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473204413/Lucas_Cranach_d._C3_84._-_Martin_Luther__1528__Veste_Coburg___cropped_yo80pg.jpg",
  birthdate: Date.new(1483, 11, 10), gender: "M",
  description: "You're probably looking for the other Martin Luther"
})

Site.create({
  user_id: 64, lat: 50.973212, lng: 10.319947,
  start_date: Date.new(1510, 6, 30), end_date: Date.new(1546, 2, 18),
  max_guests: 100, accepting_guests: true, city: "Eisenach",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Deckard", password: "12345678", firstname: "Rick",
  lastname: "Deckard",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473204696/latest_uvoa1f.jpg",
  birthdate: Date.new(2018, 3, 19), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 65, lat: 37.778592, lng: -122.427987,
  start_date: Date.new(2040, 11, 2), end_date: Date.new(2044, 11, 2),
  max_guests: 100, accepting_guests: true, city: "San Francisco",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Captain_Picard", password: "12345678", firstname: "Jean-Luc",
  lastname: "Picard",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473204855/300px-Jean-Luc_Picard_k0nrgf.jpg",
  birthdate: Date.new(2305, 7, 13), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 66, lat: 47.407045, lng: 6.170107,
  start_date: Date.new(2327, 5, 30), end_date: Date.new(2405, 10, 11),
  max_guests: 100, accepting_guests: true, city: "La Barre",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Captain_Kirk", password: "12345678", firstname: "James T",
  lastname: "Kirk",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473205143/JamesTKirk_qek4fy.jpg",
  birthdate: Date.new(2233, 3, 22), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 67, lat: 41.660515, lng: -91.524773,
  start_date: Date.new(2250, 7, 12), end_date: Date.new(2371, 3, 7),
  max_guests: 100, accepting_guests: true, city: "Iowa City",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Flash", password: "12345678", firstname: "Flash",
  lastname: "Gordon",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473205493/flash-gordon.jpg.824x0_q71_crop-scale_hp2gmq.jpg",
  birthdate: Date.new(2077, 5, 12), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 68, lat: 41.316131, lng: -72.922386,
  start_date: Date.new(2100, 5, 3), end_date: Date.new(2150, 7, 5),
  max_guests: 100, accepting_guests: true, city: "New Haven",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "zombie1", password: "12345678", firstname: "the",
  lastname: "Undead",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473205653/maxresdefault_pamjux.jpg",
  birthdate: Date.new(2450, 1, 1), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 69, lat: 42.752201, lng: -120.119654,
  start_date: Date.new(2450, 1, 1), end_date: Date.new(3000, 12, 31),
  max_guests: 100, accepting_guests: true, city: "Everywhere",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "zombie2", password: "12345678", firstname: "the",
  lastname: "Undead",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473205653/maxresdefault_pamjux.jpg",
  birthdate: Date.new(2450, 1, 1), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 70, lat: 29.617813, lng: -98.059114,
  start_date: Date.new(2450, 1, 1), end_date: Date.new(3000, 12, 31),
  max_guests: 100, accepting_guests: true, city: "Everywhere",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "zombie3", password: "12345678", firstname: "the",
  lastname: "Undead",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473205653/maxresdefault_pamjux.jpg",
  birthdate: Date.new(2450, 1, 1), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 71, lat: 40.251385, lng: -76.086459,
  start_date: Date.new(2450, 1, 1), end_date: Date.new(3000, 12, 31),
  max_guests: 100, accepting_guests: true, city: "Everywhere",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "zombie4", password: "12345678", firstname: "the",
  lastname: "Undead",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473205653/maxresdefault_pamjux.jpg",
  birthdate: Date.new(2450, 1, 1), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 72, lat: -11.085231, lng: -45.148961,
  start_date: Date.new(2450, 1, 1), end_date: Date.new(3000, 12, 31),
  max_guests: 100, accepting_guests: true, city: "Everywhere",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "zombie5", password: "12345678", firstname: "the",
  lastname: "Undead",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473205653/maxresdefault_pamjux.jpg",
  birthdate: Date.new(2450, 1, 1), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 73, lat: 39.033208, lng: -3.840365,
  start_date: Date.new(2450, 1, 1), end_date: Date.new(3000, 12, 31),
  max_guests: 100, accepting_guests: true, city: "Everywhere",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "zombie6", password: "12345678", firstname: "the",
  lastname: "Undead",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473205653/maxresdefault_pamjux.jpg",
  birthdate: Date.new(2450, 1, 1), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 74, lat: 13.844942, lng: 3.015103,
  start_date: Date.new(2450, 1, 1), end_date: Date.new(3000, 12, 31),
  max_guests: 100, accepting_guests: true, city: "Everywhere",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "zombie7", password: "12345678", firstname: "the",
  lastname: "Undead",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473205653/maxresdefault_pamjux.jpg",
  birthdate: Date.new(2450, 1, 1), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 75, lat: 44.407440, lng: 66.472131,
  start_date: Date.new(2450, 1, 1), end_date: Date.new(3000, 12, 31),
  max_guests: 100, accepting_guests: true, city: "Everywhere",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "zombie8", password: "12345678", firstname: "the",
  lastname: "Undead",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473205653/maxresdefault_pamjux.jpg",
  birthdate: Date.new(2450, 1, 1), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 76, lat: 14.186037, lng: 102.683074,
  start_date: Date.new(2450, 1, 1), end_date: Date.new(3000, 12, 31),
  max_guests: 100, accepting_guests: true, city: "Everywhere",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "zombie9", password: "12345678", firstname: "the",
  lastname: "Undead",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473205653/maxresdefault_pamjux.jpg",
  birthdate: Date.new(2450, 1, 1), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 77, lat: 39.441650, lng: 141.354947,
  start_date: Date.new(2450, 1, 1), end_date: Date.new(3000, 12, 31),
  max_guests: 100, accepting_guests: true, city: "Everywhere",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "zombie10", password: "12345678", firstname: "the",
  lastname: "Undead",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473205653/maxresdefault_pamjux.jpg",
  birthdate: Date.new(2450, 1, 1), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 78, lat: -29.758242, lng: 140.651822,
  start_date: Date.new(2450, 1, 1), end_date: Date.new(3000, 12, 31),
  max_guests: 100, accepting_guests: true, city: "Everywhere",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Otto", password: "12345678", firstname: "Otto",
  lastname: "von Bismarck",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473206294/81674-004-1F328DE1_edrfhy.jpg",
  birthdate: Date.new(1815, 4, 1), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id:79 , lat: 52.546309, lng: 13.373955,
  start_date: Date.new(1862, 9, 23), end_date: Date.new(1898, 7,  30),
  max_guests: 100, accepting_guests: true, city: "Berlin",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Columbus", password: "12345678", firstname: "Christopher",
  lastname: "Columbus",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473206473/1519-christopher-columbus-01-200x273_flip_svpqsf.jpg",
  birthdate: Date.new(1450, 10, 31), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 80, lat: 44.397448, lng: 8.952629,
  start_date: Date.new(1492, 10, 12), end_date: Date.new(1506, 5, 20),
  max_guests: 100, accepting_guests: true, city: "Genoa",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "San Martin", password: "12345678", firstname: "Jose",
  lastname: "de San Martin",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473206691/3a61d1b9b83e8b7ed1b113dc820e02fe_kbhje7.jpg",
  birthdate: Date.new(1778, 2, 25), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 81, lat: -34.584628, lng: -58.426799,
  start_date: Date.new(1814, 8, 10), end_date: Date.new(1850, 8, 17),
  max_guests: 100, accepting_guests: true, city: "Buenos Aires",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Bolivar", password: "12345678", firstname: "Simon",
  lastname: "Bolivar",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473206907/Simon_Bolivar1_ioisc1.jpg",
  birthdate: Date.new(1783, 7, 24), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 82, lat: 10.471085, lng: -66.881098,
  start_date: Date.new(1800, 3, 1), end_date: Date.new(1830, 12, 17),
  max_guests: 100, accepting_guests: true, city: "Caracas",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Pancho", password: "12345678", firstname: "Pancho",
  lastname: "Villa",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473207130/Pancho-Villa_h7anhp.jpg",
  birthdate: Date.new(1878, 6, 5), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 83, lat: 28.634760, lng: -106.049171,
  start_date: Date.new(1905, 1, 4), end_date: Date.new(1923, 7, 20),
  max_guests: 100, accepting_guests: true, city: "Chihuahua",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Suleiman", password: "12345678", firstname: "Suleiman",
  lastname: "the Magnificent",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473207564/suleiman-the-magnificent_kio9mf.jpg",
  birthdate: Date.new(1494, 11, 6), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 84, lat: 41.013000, lng: 28.984000,
  start_date: Date.new(1520, 9, 30), end_date: Date.new(1566, 9, 7),
  max_guests: 100, accepting_guests: true, city: "Istanbul",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Khan", password: "12345678", firstname: "Genghis",
  lastname: "Khan",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473207760/2493421_fyaqes.jpg",
  birthdate: Date.new(1162, 3, 14), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 85, lat: 47.411446, lng: 106.601254,
  start_date: Date.new(1206, 3, 1), end_date: Date.new(1227, 8, 18),
  max_guests: 100, accepting_guests: true, city: "Mongolia",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

User.create({
  username: "Alien", password: "12345678", firstname: "the",
  lastname: "Alien",
  profile: "http://res.cloudinary.com/dush6wf6z/image/upload/v1473208037/200233-alien-big-chap-005_wmwfhh.jpg",
  birthdate: Date.new(2100, 1, 1), gender: "M",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

Site.create({
  user_id: 86, lat: -83.229084, lng: -18.872471,
  start_date: Date.new(2100, 1, 1), end_date: Date.new(2400, 12, 31),
  max_guests: 100, accepting_guests: true, city: "Space",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
})

  # User.create({
  #   username: "", password: "12345678", firstname: "",
  #   lastname: "",
  #   profile: "",
  #   birthdate: Date.new(), gender: "M",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  # })
  #
  # Site.create({
  #   user_id: , lat: , lng: ,
  #   start_date: Date.new(), end_date: Date.new(),
  #   max_guests: 100, accepting_guests: true, city: "",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  # })


  1000.times do
    Reference.create({author_id: rand(86) + 1, subject_id: rand(86) + 1, recommended: (rand(2) == 1 ? true : false), body: Faker::Lorem.paragraph, created_at: Date.new(rand(2016) + 1, rand(12) + 1, rand(27) + 1)})
  end
