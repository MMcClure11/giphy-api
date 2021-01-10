class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users, status: 200
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user, status: 200
  end
end
