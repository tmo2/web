class PostsController < ApplicationController
  def index
    @posts = Post.order("created_at DESC").limit(12)
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  def new
    @post = Post.new
  end

  def create
    return if current_user.blank?
    current_user.posts.create(post_params)
    redirect_to root_path
  end

  def edit
    return if current_user.blank?
    @post = current_user.posts.find(params[:id])
  end

  def update
    return if current_user.blank?
    post = current_user.posts.find(params[:id])
    post.update(posts_params)
    redirect_to root_path
  end

  def destroy
    return if current_user.blank?
    post = current_user.posts.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
