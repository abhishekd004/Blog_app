class CommentsController < ApplicationController
  
  def new
    # byebug
    @comment = Comment.new
    @article_id = params[:article_id]
    p @article_id
  end

  def create
    # byebug
    article_id = params[:article_id]
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user[:id]
    @comment.article_id = article_id
    if @comment.save
      flash[:notice] = "Commented"
      redirect_to articles_path
    else
      render 'new'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end
