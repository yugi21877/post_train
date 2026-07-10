class PostsController < ApplicationController
  def index
    # @posts = Post.all
    # @posts = Post.includes(:user)
    # @posts = Post.preload(:user)
    @posts = Post.eager_load(:user)
  end
end
