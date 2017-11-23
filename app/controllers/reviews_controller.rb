class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurant/show'
    end

  end

  private
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
