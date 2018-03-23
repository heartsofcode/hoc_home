# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: 'Lailai', email: 'luai@lai.lai', password: 'lailailai')
User.create!(name: 'Lili', email: 'luei@lei.lei', password: 'lilili')

Blogpost.create!(user_id: 1, title: 'grocery shopping', description: 'pickles, eggs, red onion')
Blogpost.create!(user_id: 1, title: 'wash the car')
Blogpost.create!(user_id: 1, title: 'register kids for school', description: 'Register Kira for Ruby Junior High and Caleb for Rails High School')
Blogpost.create!(user_id: 2, title: 'check engine light', description: 'The check engine light is on in the Tacoma')
Blogpost.create!(user_id: 2, title: 'dog groomers', description: 'Take Pinky and Redford to the groomers on Wednesday the 23rd')
