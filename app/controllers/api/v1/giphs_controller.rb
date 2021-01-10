class Api::V1::GiphsController < ApplicationController

  def index
    giphs = Giph.all
    render json: giphs, status: 200
  end

  def create
    # byebug
    user = User.find_or_create_by(username: params[:username])
    giph = Giph.find_or_create_by(title: params[:title], url: params[:url])
    favorite = Favorite.create(user: user, giph: giph)

    render json: user, status: 200
  end
end
