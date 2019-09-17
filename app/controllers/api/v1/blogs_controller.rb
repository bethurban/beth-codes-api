class Api::V1::BlogsController < ApplicationController

  def index
    render json: Blog.all
  end

  def show
    render json: blog
  end

  def create
    newblog = Blog.create(blog_params)
    if newblog.save
      render json: newblog
    else
      render json: { message: newblog.errors }, status: 400
    end
  end

  def update
    render json: blog.update(blog_params)
  end

  def destroy
    render json: blog.destroy
  end

  private

  def blog
    Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :description)
  end

end
