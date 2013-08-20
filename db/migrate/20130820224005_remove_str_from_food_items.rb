class RemoveStrFromFoodItems < ActiveRecord::Migration
  def up
    remove_column :food_items, :str
  end

  def down
  end
end
