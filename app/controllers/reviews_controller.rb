class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:book_id])
    @review = Review.new
  end

  def create
    @review = Review.new(
      restaurant_id: restaurant[:restaurant_id]
      body: review_params["body"]
      )
    if @review.save
      refirect_to restaurant_url(@review.restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:body)
  end
end
