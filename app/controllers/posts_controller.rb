class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "创建成功。"
      redirect_to edit_post_url(@post)
    else
      flash[:danger] = "创建失败。"
      render :new
    end
  end

  def update
    if @post.update_attributes(post_params)
      flash[:success] = "更新成功。"
      redirect_to edit_post_url(@post)
    else
      flash[:danger] = "更新失败。"
      render :edit
    end
  end

  def destroy
    if @post.destroy
      flash[:success] = "删除成功。"
      redirect_to posts_url
    end
  end

  def show

  end

  def edit

  end

  private

  def post_params
    params.require(:post).permit(:country, :city, colors: [])
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
