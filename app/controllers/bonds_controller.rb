class BondsController < ApplicationController

  def create
    user = User.find(params[:followed_id])
    current_user.follow(user)
    # redirect_to "/users"
    
    redirect_back(fallback_location: root_path)
  end
  
  def destroy
    user = Bond.find(params[:id]).followed
    current_user.unfollow(user)
    # redirect_to "/users"

    redirect_back(fallback_location: root_path)

  end
  
end
