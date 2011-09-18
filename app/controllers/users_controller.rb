class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @title = "#{@user.name}'s page"
  end

  def new
    @title = "Sign up"
  end

end