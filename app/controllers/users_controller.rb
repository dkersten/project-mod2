class UsersController < ApplicationController

  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.find(params[:id])
  end

  def create
    byebug
    user = User.find(params[:id])
    
    # user.
  end

  private

    def user_params
      params.require(:users)
    end

end
