class Post < ActiveRecord::Base
	validates :title, presence: true, length: { minimum: 10, maximum: 100 }
	validates :description, presence: true, length: { minimum: 100, maximum: 5000 }
	has_attached_file :image, styles: { medium: ["300x300>", :jpg, :quality => 70], thumb: 
  	                ["100x100>", :jpg, :quality => 70], large:  
  	                ['600>', :jpg, :quality => 70] }
  	validates :image, attachment_presence: true
  	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  	belongs_to :category
end