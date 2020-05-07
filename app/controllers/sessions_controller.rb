class SessionsController < ApplicationController

    skip_before_action :authenticate_user, only: [:create]
    
    def create

        @user = User.find_by(email: params[:session][:email])

        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:err] = "Username or password is incorrect."
            redirect_to '/'
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to '/'
    end

    def show_cart
      # if @current_user.id == params[:id]
        render :show_cart
      # else
      # end
    end

    def add_flight
      session[:flight_id] = params[:trip_params][:flight_id]
      # @flight = FlightClass.find(session[:flight_id])
      redirect_to cart_path
    end

    def add_accommodation
      session[:accommodation_id] = params[:trip_params][:accommodation_id]
      redirect_to cart_path
    end

    def add_destination
      session[:destination_id] = params[:trip_params][:destination_id]
      redirect_to cart_path
    end
end