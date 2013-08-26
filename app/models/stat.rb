class Stat < ActiveRecord::Base
  attr_accessible :cha, :con, :dex, :health, :hunger, :int, :moral, :str, :user_id
end
