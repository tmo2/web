class WelcomeController < ApplicationController
  def index
    @posts = Post.order("created_at DESC").limit(12)
  end
end
