class Api::V1::PostsController < ApplicationController

  def index
    blog = Blog.find(params[:blog_id])
    render json: blog.posts
  end

  def show
    render json: post
  end

  def create
    newpost = Post.create(post_params)
    newpost.save ? render json: newpost : render json: { message: newpost.errors }, status: 400
  end

  def update
    render json: post.update(post_params)
  end

  def destroy
    render json: post.destroy
  end

  private

  def post
    Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :blog_id)
  end

end
