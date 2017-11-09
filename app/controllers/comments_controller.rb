class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_to @comment.commentable
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :id, :commentable_id, :commentable_type, :user_id)
  end
end
