class StaticPagesController < ApplicationController
  def home
    # Different home view if there is a logged user
    if logged_in?
      @microposts = current_user.microposts

      render 'users/home_feed'
    end
  end

  def about
  end
end
