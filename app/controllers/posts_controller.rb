class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:banana).permit(:title, :content))
    # {banana:         {title: "Day44",        content: "Blah"}}
    if @post.save
      redirect_to '/'
    else
      render :new
    end
  end

end
