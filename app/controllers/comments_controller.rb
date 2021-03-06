class CommentsController < ApplicationController
  before_action :require_user
  def create
    @post = Post.find(params[:post_id])
    # @comment = Comment.new(comment_params)
    # @comment.post = @post
    # The two lines of code above this are equivalent to the following line of code
    @comment = @post.comments.build(comment_params)
    @comment.creator = @current_user

    if @comment.save
      flash[:notice] = "Your comment was saved"
      redirect_to post_path(@post)
    else
      render 'posts/show'
    end
  end

  def vote
    comment = Comment.find(params[:id])
    vote = Vote.create(voteable: comment, creator: current_user, vote: params[:vote])
    if vote.valid?
      flash[:notice] = "Your vote was counted"
      redirect_to :back
    else
      flash[:error] = "You can only vote on a comment once"
      redirect_to :back
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
