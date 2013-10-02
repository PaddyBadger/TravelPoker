class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(params [:like])

    if @like.save
      flash[:notice] = "Liked!."
      redirect_to @card
    else
      flash[:error] = "There was an error liking. Please try again."
    end
  end

  def destroy
    @like = current_user.likes.find(params [:id])

    if @like.destroy
      flash[:notice] = "Unliked!."
      redirect_to @card
    else
      flash[:error] = "There was an error unliking. Please try again."
    end
  end
end
