class ClothesItem < ActiveRecord::Base
  include Conversion
  
  attr_accessible :assemble, :assemble_skills, :decay,  :mass, :moral, :name,  :result, :tools, :workshop

  before_validation :convert_hash


  validates :name, uniqueness: true, length: {minimum: 3}, presence: true
  validates :mass, numericality: {greater_than: 0}
  validates :result, numericality: {greater_than: 0} 


  serialize :assemble, Hash
  serialize :tools, Hash
  serialize :assemble_skills, Hash
  
  
end
