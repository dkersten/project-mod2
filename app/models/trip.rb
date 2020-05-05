class Trip < ApplicationRecord
    belongs_to :user
    belongs_to :destination
    belongs_to :flight_class
    belongs_to :accommodation
end
