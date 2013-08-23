class ToolsItem < ActiveRecord::Base
  include Conversion

  attr_accessible :assemble, :assemble_skills, :decay, :mass, :name, :result, :tools, :workshop

  before_validation :convert_hash

  validates :name, presence: true, uniqueness: true, length: {minimum: 3}
  validates :mass, numericality: {greater_than: 0}
  validates :result, numericality: {greater_than: 0}
end
