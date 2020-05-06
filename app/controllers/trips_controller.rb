class TripsController < ApplicationController

  def new
    @trip = Trip.new
    @users = User.all
    @destinations = Destination.all
    @accommodations = Accommodation.all
    @flights = FlightClass.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def create
    @trip = Trip.create(trip_params)
    #byebug
    redirect_to user_path(@trip.user)
  end

  def edit
    @trip = Trip.find(params[:id])
    @users = User.all
    @destinations = Destination.all
    @accommodations = Accommodation.all
    @flights = FlightClass.all
  end

  def update
    trip = Trip.update(trip_params)
    redirect_to trip_path(trip)
  end

  private

  def trip_params
    params.require(:trip).permit(:user_id, :destination_id, :flight_class_id, :accommodation_id)
  end

end
