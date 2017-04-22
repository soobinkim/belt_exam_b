class LikesController < ApplicationController
  def like
    

    Like.create(user_id:(params[:user_id]), idea_id:(params[:id]))
    redirect_to "/ideas"

  end


  def unlike
  end
end
