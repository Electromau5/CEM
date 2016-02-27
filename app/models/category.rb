class Category < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 3, maximum: 25}
	has_and_belongs_to_many :listings
end