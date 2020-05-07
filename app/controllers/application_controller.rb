class ApplicationController < ActionController::Base

    before_action :set_user
    before_action :authenticate_user

    skip_before_action :authenticate_user, only: [:index]

    def index
        @user = User.new
    end

    def set_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def authenticate_user
        if @current_user
            #do nothing
        else 
          redirect_to '/'
        end 
    end
    
end
