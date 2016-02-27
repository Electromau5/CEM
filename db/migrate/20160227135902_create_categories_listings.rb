class CreateCategoriesListings < ActiveRecord::Migration
  def change
    create_table :categories_listings, :id => false do |t|
      t.integer :category_id
      t.integer :listing_id
    end
  end
end
