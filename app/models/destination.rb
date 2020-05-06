class Destination < ApplicationRecord
    has_many :trips
    has_many :users, through: :trips

    def city_country
      "#{self.city}, #{self.country}"
    end

end
