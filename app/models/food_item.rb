class FoodItem < ActiveRecord::Base
  attr_accessible :cha, :hunger, :int, :mass, :moral, :name, :con, :decay, :decay_probability, :assemble, :workshop, :result, :assemble_skills, :tools

  before_validation :convert_hash

  validates :name, presence: true, length: {minimum: 3}, uniqueness: true
  validates :mass, numericality: {greater_than: 0}
  validates :decay_probability, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :hunger, numericality: {less_than_or_equal_to: 0}

  

  serialize :assemble, Hash
  serialize :assemble_skills, Hash
  serialize :tools, Hash
  
  
  private
  def convert_hash
   if self.assemble.is_a?(String)
      hash = {}
      hash_array = self.assemble.gsub(/({|})/,"").split(",")
      
      hash_array.each do |pair|
        
        if pair =~ /:/
          
          k, v = pair.split(":")
          v.gsub!(/\s/,"")
          
          hash[k.gsub(/\s/,"").to_sym] = v.respond_to?(:to_i) ? v.to_i : v
        end
      end
      self.assemble = hash
   
    end

    if self.tools.is_a?(String)
      hash = {}
      hash_array = self.tools.gsub(/({|})/,"").split(",")
      hash_array.each do |pair|
        pair.chomp!
        if pair =~ /:/
          k, v = pair.split(":")
          v.gsub!(/\s/,"")
          hash[k.gsub(/\s/,"").to_sym] = v.respond_to?(:to_i) ? v.to_i : v
        end
      end
      self.tools = hash
    
    end

    if self.assemble_skills.is_a?(String)
      hash = {}
      hash_array = self.assemble_skills.gsub(/({|})/,"").split(",")
      hash_array.each do |pair|
        pair.chomp!
        if pair =~ /:/
          k, v = pair.split(":")
          v.gsub!(/\s/,"")
          hash[k.gsub(/\s/,"").to_sym] = v.respond_to?(:to_i) ? v.to_i : v
        end
      end
      self.assemble_skills = hash
    
    end

    

    
  end


end



    
    
