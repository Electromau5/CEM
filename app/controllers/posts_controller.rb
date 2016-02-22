class PostsController < ApplicationController

	before_action :set_posts, only: [:show, :edit, :update, :destroy]
	def index
		@post = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
			if @post.save
				redirect_to post_path(@post)
			else
				render 'new'
			end
	end

	def show

	end

	def edit

	end

	def update
		if @post.update(post_params)
			redirect_to post_path(@post)
		else
			render 'edit'
		end
	end

	def destroy
		@post.destroy
		redirect_to posts_path
	end

private
	
	def post_params
		params.require(:post).permit(:title, :description, :image)
	end

	def set_posts
		@post = Post.find(params[:id])
	end

end