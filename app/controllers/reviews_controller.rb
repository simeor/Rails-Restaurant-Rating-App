class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @restaurant = Restaurantx.find(params[:restaurantx_id])
  end

  def create
    @restaurant = Restaurantx.find(params[:restaurantx_id])
    @review = Review.new(review_params)
    @review.restaurantx = @restaurant
    if @review.save
    redirect_to restaurantx_path(@restaurant)
  else
    render :new
  end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end
