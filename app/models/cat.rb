class Cat < ActiveRecord::Base
  belongs_to :breed
  belongs_to :customer
  
  validates :name, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  
end
