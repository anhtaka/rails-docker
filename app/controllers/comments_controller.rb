class CommentsController < ApplicationController
  def create
    #binding.pry
    comment = Comment.new(comment_params)
    if comment.save
      flash[:notice] = "コメントOK"
      redirect_to comment.board
    else
      redirect_to :back, flash: {
        comment: comment,
        error_messages: comment.errors.full_messages
      }
      #binding.pry
    end
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:board_id, :name, :comment)
  end
end
