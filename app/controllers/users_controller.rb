class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "You have successfully signed up! Get stuck into your tasks by signing in."
    else
      render "new"
    end
  end

end
