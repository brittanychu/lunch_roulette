class RestaurantsController < ApplicationController
  def index
  end

  def new
  end

  def create
    render plain: params[:restaurant].inspect
  end
end
