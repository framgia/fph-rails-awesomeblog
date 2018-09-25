class MicropostsController < ApplicationController
  def create
    micropost = current_user.microposts.build(micropost_params)

    if micropost.save
      redirect_to root_url
    end
  end

  private
    def micropost_params
      params.require(:micropost).permit(:content)  
    end
end
