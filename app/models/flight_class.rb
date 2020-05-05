class FlightClass < ApplicationRecord
    has_many :trips
    has_many :users, through: :trips
end
