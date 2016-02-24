class ListingsController < ApplicationController

def index
	@listing = Listing.all
end

def new
	@listing = Listing.new
end

def create
	@listing = Listing.new (set_listings)
		if @listing.save
			redirect_to listing_path(@listing)
		else
			render 'new'
		end
end

def show
	@listing = Listing.find(params[:id])
end

def edit
	@listing = Listing.find(params[:id])
end

def update
	@listing = Listing.find(params[:id])
		if @listing.update(set_listings)
			redirect_to listing_path(@listing)
		else
			render 'edit'
		end
end

def destroy
end

private
	def set_listings
		params.require(:listing).permit(:name, :description, :price, :condition, :image)
	end
end