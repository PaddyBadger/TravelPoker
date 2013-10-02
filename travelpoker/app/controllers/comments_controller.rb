class CommentsController < ApplicationController
  def create
    @card = Card.find(params[:card_id])
    @comments = @card.comments

    @comment = current_user.comments.build(params[:comment])
    @comment.card = @card
    @new_comment = Comment.new

      if @comment.save
        flash[:notice] = "Comment was created."
      else
        flash[:error] = "There was an error saving the comment. Please try again."
      end
        redirect_to [@card]
    end
  end

  def destroy
    @card = Card.find(params[:card_id])

    @comment = @card.comments.find(params[:id])

    if @comment.destroy
      flash[:notice] = "Comment was removed."
    else
      flash[:error] = "Comment couldn't be deleted. Try again."
    end
      redirect_to [@card]
    end
  end
end
