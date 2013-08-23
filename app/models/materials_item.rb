class MaterialsItem < ActiveRecord::Base
  attr_accessible :decay, :decay_probability, :function, :mass, :name, :quality
  
  validates :quality, numericality: {greater_than_or_equal_to: 0}
  validates :name, length: {minimum: 3}, uniqueness: true, presence: true
  validates :mass, numericality: {greater_than: 0}
  validates :function, presence: true
  validates :decay_probability, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  

end
