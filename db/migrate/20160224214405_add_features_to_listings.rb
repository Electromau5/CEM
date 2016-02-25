class AddFeaturesToListings < ActiveRecord::Migration
  def change
    add_column :listings, :feature1, :text
    add_column :listings, :feature2, :text
    add_column :listings, :feature3, :text
  end
end
