class IdeasController < ApplicationController
  def index
    @bright = Idea.all


  end

  def show
    @bright = Idea.find(params[:id])
  end

  def create
    idea = Idea.new(idea_params)

    if idea.save
      redirect_to "/ideas"
    else
      flash[:errors] = idea.errors.full_messages
      redirect_to "/ideas"
    end
  end


  def destroy
    post = Idea.find(params[:id])
    post.destroy
    redirect_to "/ideas"
  end

  private
  def idea_params
    params.require(:ideas).permit(:content).merge(user: User.find(session[:user_id]))
  end
end
