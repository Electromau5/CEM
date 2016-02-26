class AddAttachmentImage2Image3Image4Image5ToListings < ActiveRecord::Migration
  def self.up
    change_table :listings do |t|
      t.attachment :image2
      t.attachment :image3
      t.attachment :image4
      t.attachment :image5
    end
  end

  def self.down
    remove_attachment :listings, :image2
    remove_attachment :listings, :image3
    remove_attachment :listings, :image4
    remove_attachment :listings, :image5
  end
end
