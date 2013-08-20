class AddStrToFoodItems < ActiveRecord::Migration
  def change
    add_column :food_items, :str, :integer, default: 0
    change_column :food_items, :result, :integer, default: 1
  end
end
