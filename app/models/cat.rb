class Cat < ActiveRecord::Base
  belongs_to :breed
  
  validates :name, :price, presence: true
  validates :price, numericality: true
  
end
