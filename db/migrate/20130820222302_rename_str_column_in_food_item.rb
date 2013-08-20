class RenameStrColumnInFoodItem < ActiveRecord::Migration
  def up
    remove_column :food_items, :dex
    rename_column :food_items, :str, :con
  end

  def down
  end
end
