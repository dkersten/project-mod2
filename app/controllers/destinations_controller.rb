class DestinationsController < ApplicationController

    skip_before_action :authenticate_user, only: [:index, :show]

    def index
        @destinations = Destination.all
    end

    def show
        @destination = Destination.find(params[:id])
    end


end
