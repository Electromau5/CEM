class AddSiteToListings < ActiveRecord::Migration
  def change
    add_column :listings, :site, :string
  end
end
