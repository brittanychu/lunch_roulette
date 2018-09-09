class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      flash[:success] = "New restaurant saved successfully!"
      redirect_to @restaurant
    else
      flash[:danger] = "New restaurant wasn't saved. Please try again."
      render 'new'
    end
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :description)
    end

end
