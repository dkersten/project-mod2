Culinary Based Travel App

[x] Models
[x] Databases
[x] Migrate
[x] Seed Data
[] Views

Users
    Has many trips
    Has many destinations, through trips
    Has many flights, through trips
    Has many accommodations, through trips

    name - string
    email - string
    encrypted_password - string
    salt - string

Trips
    Belongs to user
    Belongs to accomodation
    Belongs to destination
    Belongs to flight

    user_id - integer
    accomodation_id - integer
    destination_id - integer
    flight_id - integer

Accommodations
    Has many trips
    Has many users, through trips

    name - string
    description - text
    cost - integer
    img_url - string

FlightClasses
    Has many trips
    Has many users, through trips

    name - string
    description - text
    cost - integer
    img_url - string

Destinations
    Has many trips
    Has many users, through trips

    name - string
    description - text
    cost - integer
    img_url - string