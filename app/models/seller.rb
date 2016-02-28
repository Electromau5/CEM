class Seller < ActiveRecord::Base
	validates :sellername, :storename, presence: true
	validates :description, length: { minimum: 50, maximum: 500 }
	has_many :listings, dependent: :destroy
end