class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end
  def create
    comment_params = params.require(:comment).permit(:title, :body)
    post = Post.find(params[:post_id])
    comment = post.comments.create(comment_params)
    redirect_to [post, comment]
    # redirect_to post_comment_path(post, comment)
  end
end
