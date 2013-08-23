class ArmoursItem < ActiveRecord::Base
  include Conversion

  attr_accessible :assemble, :assemble_skills, :decay, :decay_days, :mass, :name, :quality, :result, :tools, :workshop

  before_validation :convert_hash

  validates :name, presence:  true, uniqueness: true, length: {minimum: 3}
  validates :quality, numericality: {greater_than_or_equal_to: 0}
  validates :mass, numericality: {greater_than: 0}
  

  
  serialize :assemble, Hash
  serialize :tools, Hash
  serialize :assemble_skills, Hash

  
end
