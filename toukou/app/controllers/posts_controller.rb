class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to new_path
    end
  end

  def post_params
    params.require(:post).permit(:body, :title)
  end
end
# aaaa
