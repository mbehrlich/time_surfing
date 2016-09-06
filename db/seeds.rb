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
