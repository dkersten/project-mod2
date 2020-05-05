class User < ApplicationRecord
    has_many :trips
    has_many :destinations, through: :trips
    has_many :accommodations, through: :trips
    has_many :flight_classes, through: :trips
end
