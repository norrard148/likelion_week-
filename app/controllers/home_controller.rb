class HomeController < ApplicationController
  
  def index
    @posts=Post.all
  end
  
  def login1
    @id1 = params[:id1]
    @id2 = params[:id2]
  
  end

  def edit
    @post=Post.find(params[:post_id])
  end

  def destroy
    @post=Post.find(params[:post_id])
    @post.destroy
    redirect_to '/'
  end

  def login2
    @id3 = params[:id3]
    @id4 = params[:id4]
  end

  def new
  end
  def update
    @post=Post.find(params[:post_id])
    @post.title=params[:title]
    @post.content=params[:content]
    @post.save
    
    redirect_to '/'
  end
  
  def create
    @post=Post.new
    @post.title=params[:title]
    @post.content=params[:content]
    @post.save
    
    redirect_to '/'
  end
  
  def show 
    @post=Post.find(params[:post_id])

  end
end
