class CategoriesController < ApplicationController

	before_action :set_category, only: [:show, :edit, :update, :destroy]
	
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
	end

	def edit
		
	end

	def update
			if @category.update
				redirect_to category_path(category)
		else
			render 'edit'
		end
	end

	def delete

	end

private
	def category_params
		params.require(:category).permit(:name)
	end

	def set_category
		@category = Category.find(params[:id])
	end
end

