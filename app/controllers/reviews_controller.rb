class ReviewsController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    # @reviews = Review.all
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to @review.restaurant
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
