class CreateSeller < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
    	t.string :sellername
    	t.string :storename
    	t.string :location
    	t.text :description
    end
  end
end
