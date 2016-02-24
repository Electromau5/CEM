class Listings < ActiveRecord::Migration
  def change
  	create_table :listings do |t|
  		t.string :name
  		t.text :description
  		t.decimal :price
  		t.string :condition
  	end 
  end
end
