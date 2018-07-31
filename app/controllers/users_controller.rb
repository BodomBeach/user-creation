class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(username: params[:username])
    puts params
    if @user.valid?
      @user.save
      redirect_to show_path username: @user.username
    else
      redirect_to error_path
    end
  end

  def show
    puts params
    puts params
    puts params
    @user = User.find_by(username: params[:username])
  end

  def error
  end
end
