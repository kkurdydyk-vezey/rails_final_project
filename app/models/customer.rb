class Customer < ActiveRecord::Base
  has_many :cats
  
  validates :name, :telephone, presence: true
end
