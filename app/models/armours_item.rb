class ArmoursItem < ActiveRecord::Base
  include Conversion

  attr_accessible :assemble, :assemble_skills, :decay,  :mass, :name,  :result, :tools, :workshop, :function

  before_validation :convert_hash

  validates :name, presence:  true, uniqueness: true, length: {minimum: 3}
  validates :mass, numericality: {greater_than: 0}
  validates :function, presence: true


  
  serialize :assemble, Hash
  serialize :tools, Hash
  serialize :assemble_skills, Hash

  
end
