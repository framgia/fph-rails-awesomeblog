class StaticPagesController < ApplicationController
  def home
    # Different home view if there is a logged user
    render 'users/home_feed' if logged_in?
  end

  def about
  end
end
