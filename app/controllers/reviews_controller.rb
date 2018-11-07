class ReviewsController < ApplicationController
  # helper ::RestaurantsHelper

  def create
    @review = Review.new(restaurant_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save

    redirect_to restaurant_path(@review.restaurant)
  end

  private

  def restaurant_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:review).permit(:content, :rating)
  end
end
