class Inventory < ActiveRecord::Base
  attr_accessible :bread, :user_id
  


  def remove(item, qty)
    available = eval("self.#{item}")
    
    raise ArgumentError if qty > available
    
    eval("self.#{item} -= #{qty}")
    self.save
    
  end
end
