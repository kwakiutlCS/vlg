class RenameYieldInFoodItems < ActiveRecord::Migration
  def up
    rename_column :food_items, :yield, :result
  end

  def down
  end
end
