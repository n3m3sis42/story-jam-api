class Api::V1::UsersController < ApplicationController
  def create
    user = User.create(user_params)
    render json: user
  end

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    jams = user.jams
    
  end

  def update
    user = User.find(params[:id])
    user.update(jam_params)
    render json: user
  end


  private

  def jam_params
    params.require(:user).permit(:name, :description)
  end
end
