class Api::V1::GiphsController < ApplicationController

  def index
    giphs = Giph.all
    render json: giphs, status: 200
  end

end
