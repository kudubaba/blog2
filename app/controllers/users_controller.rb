class UsersController < ApplicationController



  def new
    @user = User.new
  end

  def create
    username = params[:user][:username]
    password = params[:user][:password]
    new_user = User.new(username: username, password: password)
    new_user.save
    session[:user_id] = new_user.id

    redirect_to user_path new_user
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def index
    @users = User.all
  end

end
