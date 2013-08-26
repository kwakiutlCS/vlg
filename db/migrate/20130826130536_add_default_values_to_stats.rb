class AddDefaultValuesToStats < ActiveRecord::Migration
  def change
    change_column :stats, :str, :integer, default: 0
    change_column :stats, :cha, :integer, default: 0
    change_column :stats, :int, :integer, default: 0
    change_column :stats, :con, :integer, default: 0
    change_column :stats, :dex, :integer, default: 0
    change_column :stats, :moral, :integer, default: 50
    change_column :stats, :hunger, :integer, default: 30
    change_column :stats, :health, :integer, default: 100
    
  end
end
