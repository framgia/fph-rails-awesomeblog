class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:info] = "Successfully logged in."
      redirect_to root_url
    else
      # use now method if request is not redirected
      flash.now[:danger] = "Invalid credentials."
      render 'new'
    end
  end
end
