class Listing < ActiveRecord::Base
	validates :name, length: { minimum: 10, maximum: 40 } 
	validates :name, :feature1,:feature2,:feature3, :price, :condition, presence: true
	has_attached_file :image, styles: { medium: ["300x300>", :jpg, :quality => 70], thumb: 
  	                ["100x100>", :jpg, :quality => 70],  large:  
  	                ['1000>', :jpg, :quality => 70] }
  	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
    
end