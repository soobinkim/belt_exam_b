class UsersController < ApplicationController


  def index
  end

  def edit
  end

  def show
    @user = User.find(session[:user_id])
    @like = Like.all
  end

  def new
  end

  private

  def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
  end


end
