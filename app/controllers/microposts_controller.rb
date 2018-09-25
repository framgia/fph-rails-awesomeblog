class MicropostsController < ApplicationController
  def create
    @micropost = current_user.microposts.build(micropost_params)

    if @micropost.save
      redirect_to root_url
    else
      # home_feed view needs this variable, to display microposts
      @microposts = current_user.microposts.paginate(page: params[:page])
      render 'users/home_feed'
    end
  end

  private
    def micropost_params
      params.require(:micropost).permit(:content)  
    end
end
