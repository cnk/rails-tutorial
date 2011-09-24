class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @title = "#{@user.name}'s page"
  end

  def new
    @user = User.new
    @title = "Sign up"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

end
