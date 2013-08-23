class WeaponsItem < ActiveRecord::Base
  include Conversion
  
  attr_accessible :assemble, :assemble_skills, :decay, :decay_days, :mass, :name, :quality, :skill, :tools, :workshop, :result

  before_validation :convert_hash

  validates :name, uniqueness: true, presence: true, length: {minimum: 3}
  validates :skill, presence: true
  validates :quality, numericality: {greater_than_or_equal_to: 0}
  validates :mass, numericality: {greater_than: 0}

  serialize :assemble, Hash
  serialize :tools, Hash
  serialize :assemble_skills, Hash

  
end
