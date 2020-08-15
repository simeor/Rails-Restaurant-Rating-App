class RestaurantxsController < ApplicationController

def index
  @restaurants = Restaurantx.all
end

def show
  @restaurant = Restaurantx.find(params[:id])
end

def new
  @restaurant = Restaurantx.new
end

def edit
@restaurant = Restaurantx.find(params[:id])
end

def create
  @restaurant = Restaurantx.new(restaurant_params)

  if @restaurant.save
    redirect_to @restaurant, notice: 'created'
  else
    render :new
  end
end

def update
  @restaurant = Restaurantx.find(params[:id])
  @restaurant.update(params.require(:restaurantx).permit(:name, :adress, :stars))
  redirect_to @restaurant, notice: 'updated'

end


def top
  @restaurants = Restaurantx.where(stars: 5)
end

private

def restaurant_params
      params.require(:restaurantx).permit(:name, :adress, :stars)
    end

end
