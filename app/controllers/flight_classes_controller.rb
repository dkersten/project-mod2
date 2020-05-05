class FlightClassesController < ApplicationController

    def index
        @flights = FlightClass.all
    end
end
