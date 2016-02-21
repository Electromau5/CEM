class Category < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 3, maximum: 25}
	before_save { self.category = category.uppercase }
end