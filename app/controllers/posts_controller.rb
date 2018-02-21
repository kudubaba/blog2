class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def posts
    blog_title = params[:post] [:title]
    blog_body = params[:post] [:body]
    post = Post.new(title: blog_title, body: blog_body)
    post.save

    redirect_to posts_path
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(title: params[:title], description: params[:description])
    redirect_to post_path(@post)
  end
end
