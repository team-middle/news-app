# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do |i|
  User.create(name: i, email: "student#{i}@flatironschool.com", github: "user#{i}")
  Post.create(title: "post #{i}", description: "whatever", user_id: rand(0..100))
end