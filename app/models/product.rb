class Product < ActiveRecord::Base
  attr_accessible :name, :unit, :quantity, :price, :inventory
  belongs_to :user
  
  validates :user_id, presence: true
end