class Trip < ApplicationRecord
    belongs_to :user
    belongs_to :destination
    belongs_to :flight_class
    belongs_to :accommodation

    def cost
      self.destination.cost.to_i + self.accommodation.cost.to_i + self.flight_class.cost.to_i 
    end

end
