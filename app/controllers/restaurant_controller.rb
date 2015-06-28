class RestaurantController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to @restaurant
  end

  def edit
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @restaurant = Restaurant.new
    @restaurants = @restaurant.restaurants
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(
      :restaurant_name,
      :phone_number,
      :address,
      :url
      )
  end
end

