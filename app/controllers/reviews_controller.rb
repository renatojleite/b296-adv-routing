class ReviewsController < ApplicationController
  before_action :set_review, only: %i[show edit update destroy]

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save
    redirect_to @restaurant
  end

  def show
  end

  def edit
  end

  def update
    @review.save
  end

  def destroy
    @review.destroy
    # redirect
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end
end
