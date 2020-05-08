# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Destination.destroy_all
Accommodation.destroy_all
FlightClass.destroy_all

Trip.destroy_all

# seeds

10.times { User.create(name: Faker::FunnyName.name, email: Faker::Internet.email, password_digest: Faker::Internet.password) }


Destination.create(city: "Bologna", country: "Italy", cuisine: "Pasta", cost: 3000, img_url: "https://i.imgur.com/kT9LCtz.jpg", img_url2: "https://i.imgur.com/mdP8XkQ.jpg", img_url3: "https://i.imgur.com/3QGpfNu.jpg", bg_img_url: "https://i.imgur.com/OQbg9CX.jpg", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.")
Destination.create(city: "Lyon", country: "France", cuisine: "Bread and Pastries", cost: 4000, img_url: "https://i.imgur.com/SqdnMJq.jpg", img_url2: "https://i.imgur.com/7yCM7TA.jpg", img_url3: "https://i.imgur.com/Te0tE42.jpg", bg_img_url: "https://i.imgur.com/quF9R5m.jpg", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.")
Destination.create(city: "Tokyo", country: "Japan", cuisine: "Sushi and Sashimi", cost: 6000, img_url: "https://i.imgur.com/Ro1Ekp8.jpg", img_url2: "https://i.imgur.com/tajRu7C.jpg", img_url3: "https://i.imgur.com/Gq4RIWO.jpg", bg_img_url: "https://i.imgur.com/CoyoPOL.jpg", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.")
Destination.create(city: "Kansas City", country: "USA", cuisine: "Barbecue", cost: 2500, img_url: "https://i.imgur.com/AQOfCtl.jpg", img_url2: "https://i.imgur.com/orPzZmZ.jpg", img_url3: "https://i.imgur.com/bZwfKTp.jpg", bg_img_url: "https://i.imgur.com/k4Ee52K.jpg", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.")
Destination.create(city: "Mexico City", country: "Mexico", cuisine: "Tacos", cost: 2800, img_url: "https://i.imgur.com/XQsuQjR.jpg", img_url2: "https://i.imgur.com/eRC98sU.jpg", img_url3: "https://i.imgur.com/RaRAJtN.jpg", bg_img_url: "https://i.imgur.com/Y3W8441.jpg", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.")

Accommodation.create(name: "2 Star", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.", cost: 800, img_url: "https://i.imgur.com/LKXK4ji.jpg")
Accommodation.create(name: "4 Star", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.", cost: 1000, img_url: "https://i.imgur.com/o8o1Yyf.jpg")
Accommodation.create(name: "5 Star", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.", cost: 1200, img_url: "https://i.imgur.com/sNahdlq.jpg")

FlightClass.create(name: "Economy", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.", cost: 200, img_url: "https://i.imgur.com/Lj49SGp.jpg")
FlightClass.create(name: "Economy Plus", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.", cost: 400, img_url: "https://i.imgur.com/Lj49SGp.jpg")
FlightClass.create(name: "First Class", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.", cost: 800, img_url: "https://i.imgur.com/Lj49SGp.jpg")

40.times { Trip.create(user_id: User.all.sample.id, accommodation_id: Accommodation.all.sample.id, destination_id: Destination.all.sample.id, flight_class_id: FlightClass.all.sample.id)}

