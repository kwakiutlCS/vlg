class FoodItem < ActiveRecord::Base
  include Conversion
  
  attr_accessible :cha, :hunger, :int, :mass, :moral, :name, :con, :decay, :decay_probability, :assemble, :workshop, :result, :assemble_skills, :tools

  before_validation :convert_hash

  validates :name, presence: true, length: {minimum: 3}, uniqueness: true
  validates :mass, numericality: {greater_than: 0}
  validates :decay_probability, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :hunger, numericality: {less_than_or_equal_to: 0}

  

  serialize :assemble, Hash
  serialize :assemble_skills, Hash
  serialize :tools, Hash
  
  
  

end



    
    
