class RemoveDecayDaysFromClothesItems < ActiveRecord::Migration
  def up
    remove_column :clothes_items, :decay_days
  end

  def down
  end
end
