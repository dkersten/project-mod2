class SessionsController < ApplicationController
    
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

end