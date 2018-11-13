class UsersController < ApplicationController

def create
  @user= User.create(user_params)
  if @user.valid?
  render json:@user
else
  render json: {"error": @user.errors.full_messages}, status: 422
end
end

def destroy
  @user = User.find(params[:id])
  @user.destroy
end

def show
  @user =User.find(params[:id])
  @userlist = @user.jobs
  render json: {"user": @user, "jobs": @userlist}
end

def update
  @user = User.find(params[:id])
  @user.update(user_params)
  if @user.valid?
    render json:@user
  else
    render json: {"error": @user.errors.full_messages}, status: 422
end
end

def find_user
  @user =User.find_by(username: params[:username])
  @userlist = @user.jobs
  # byebug
  render json: {"user": @user, "jobs": @userlist}
end

private

def user_params
  params.require(:user).permit(:name,:address,:username,:email,:phone)
end
end
