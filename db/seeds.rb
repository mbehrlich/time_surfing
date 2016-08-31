# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{ username: "Marty", firstname: "Marty", lastname: "McFly",
   password: "12345678", profile: "https://pbs.twimg.com/profile_images/115422070/mcfly_400x400.JPG",
   gender: "M", birthdate: Date.new(1968, 6, 12), description: "Nobody calls me chicken" }]);
