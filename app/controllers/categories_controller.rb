class CategoriesController < ApplicationController

	def index
		@category = Category.all
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save 
			redirect_to category_path(@category)
		end
	end

	def show
		@divisions = Category.all
		@category = Category.find(params[:id])
	end

private
	def category_params
		params.require(:category).permit(:name)
	end
end

