class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body


  after_create :build_stat
  after_create :build_inventory

  has_one :stat
  has_one :inventory

  validates :name, presence: true, uniqueness: true





  def eat(item)
    begin
      self.inventory.remove(item, 1)
      food = FoodItem.where(name: item).first
      self.stat.moral += food.moral
      self.stat.hunger += food.hunger
      self.stat.con += food.con
      self.stat.int += food.int
      self.stat.cha += food.cha
      self.save
    rescue
      "Not possible"
    end
  end


 
  
  private
  def build_stat
    s = Stat.new(user_id: self.id)
    s.save
  end
  
  def build_inventory
    i = Inventory.new(user_id: self.id)
    i.save
  end
  
end
