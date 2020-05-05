# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Accommodation.destroy_all
FlightClass.destroy_all
Destination.destroy_all

Trip.destroy_all


Destination.create(city: "Bologna", country: "Italy", cuisine: "Pasta", cost: 3000, img_url: "https://images.unsplash.com/photo-1498579150354-977475b7ea0b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80")
Destination.create(city: "Lyon", country: "France", cuisine: "Bread and Pastries", cost: 4000, img_url: "https://images.unsplash.com/photo-1568471173242-461f0a730452?ixlib=rb-1.2.1&auto=format&fit=crop&w=2530&q=80")
Destination.create(city: "Tokyo", country: "Japan", cuisine: "Sushi and Sashimi", cost: 6000, img_url: "https://images.unsplash.com/photo-1553621042-f6e147245754?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2125&q=80")
Destination.create(city: "Kansas City", country: "USA", cuisine: "Barbecue", cost: 2500, img_url: "https://images.unsplash.com/photo-1523986490752-c28064f26be3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80")
Destination.create(city: "Mexico City", country: "Mexico", cuisine: "Tacos", cost: 2800, img_url: "https://images.unsplash.com/photo-1579888944880-d98341245702?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80")

10.times { User.create(name: Faker::FunnyName.name, email: Faker::Internet.email)}
