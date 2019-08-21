class Admin::RestaurantsController < ApplicationController
  def index
    # Let's anticipate on next week (with login)
    # @restaurants = current_user.restaurants
    @restaurants = Restaurant.all
  end
end
