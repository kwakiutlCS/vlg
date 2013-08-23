module Conversion
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
