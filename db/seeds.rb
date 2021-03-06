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

# User.create(name: "Jim Duggins", email: "talnescdfs@mfke.com", password_digest: "askdjasd3423")
# User.create(name: "John Hashtag", email: "dfjkwejr@kjdf.com", password_digest: "askdjasd3423")


Destination.create(city: "Bologna", country: "Italy", cuisine: "Pasta", cost: 3000, img_url: "https://images.unsplash.com/photo-1498579150354-977475b7ea0b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.")
Destination.create(city: "Lyon", country: "France", cuisine: "Bread and Pastries", cost: 4000, img_url: "https://images.unsplash.com/photo-1568471173242-461f0a730452?ixlib=rb-1.2.1&auto=format&fit=crop&w=2530&q=80", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.")
Destination.create(city: "Tokyo", country: "Japan", cuisine: "Sushi and Sashimi", cost: 6000, img_url: "https://images.unsplash.com/photo-1553621042-f6e147245754?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2125&q=80", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.")
Destination.create(city: "Kansas City", country: "USA", cuisine: "Barbecue", cost: 2500, img_url: "https://images.unsplash.com/photo-1523986490752-c28064f26be3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.")
Destination.create(city: "Mexico City", country: "Mexico", cuisine: "Tacos", cost: 2800, img_url: "https://images.unsplash.com/photo-1579888944880-d98341245702?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.")

Accommodation.create(name: "2 Star", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.", cost: 800, img_url: "https://images.unsplash.com/photo-1515362655824-9a74989f318e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80")
Accommodation.create(name: "4 Star", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.", cost: 1000, img_url: "https://images.unsplash.com/photo-1444201983204-c43cbd584d93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80")
Accommodation.create(name: "5 Star", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.", cost: 1200, img_url: "https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80")

FlightClass.create(name: "Economy", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.", cost: 200, img_url: "https://images.unsplash.com/flagged/photo-1555685460-1d9cf532761b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3625&q=80")
FlightClass.create(name: "Economy Plus", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.", cost: 400, img_url: "https://images.unsplash.com/flagged/photo-1555685460-1d9cf532761b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3625&q=80")
FlightClass.create(name: "First Class", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed mauris dignissim sem efficitur congue. Curabitur ipsum dolor, ultrices nec velit sed, sagittis pellentesque est. Pellentesque dignissim facilisis sem, quis condimentum ex sollicitudin quis. Vivamus vitae augue massa. In in accumsan mi. Maecenas porttitor enim ut lorem vulputate, placerat porta lacus semper. Aliquam auctor mollis orci et placerat.", cost: 800, img_url: "https://images.unsplash.com/flagged/photo-1555685460-1d9cf532761b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3625&q=80")

40.times { Trip.create(user_id: User.all.sample.id, accommodation_id: Accommodation.all.sample.id, destination_id: Destination.all.sample.id, flight_class_id: FlightClass.all.sample.id)}

