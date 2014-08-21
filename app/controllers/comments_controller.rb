class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end
end
