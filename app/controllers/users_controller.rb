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
    @user = User.create(user_params)
    
    if @user.valid?
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to "/"
    end

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to "/"
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
