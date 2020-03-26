class PostsController < ApplicationController
def index
 @posts = Post.all
end
def create
    @post = Post.new( post_params)
 
    @post.save
  redirect_to @post
end
def new 
    @post=Post.new
end
def edit 
end
def update 
end
def show 
    @post = Post.find(params[:id])

end
def destroy 
end

end
private
def post_params
 params.require(:post).permit(:title, :text)
end
