class AverageCache < ActiveRecord::Base
  belongs_to :rater, :class_name => "Seller"
  belongs_to :rateable, :polymorphic => true
end
