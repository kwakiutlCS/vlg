class AddDefaultsToFoodItems < ActiveRecord::Migration
  def change
    change_column :food_items, :cha, :integer, default: 0
    change_column :food_items, :int, :integer, default: 0
    change_column :food_items, :con, :integer, default: 0
    
    change_column :food_items, :hunger, :integer, default: 0
    change_column :food_items, :moral, :integer, default: 0
    change_column :food_items, :decay_probability, :integer, default: 0
    change_column :food_items, :result, :integer, default: 0
    
    change_column :food_items, :tools, :text, default: "{}"
    change_column :food_items, :assemble_skills, :text, default: "{}"
    change_column :food_items, :assemble, :text, default: "{}"
    
    
    
  end
end
