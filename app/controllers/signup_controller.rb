class SignupController < ApplicationController

  def new
    @user = Signup.new
  end

  def create
    @user = Signup.create(signup_params)
    redirect_to posts_url
  end

  def index
    @user = Signup.all
  end

  private

  def signup_params
    params.require(:signup).permit(:username)
  end


end
