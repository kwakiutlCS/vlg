class RemoveQ < ActiveRecord::Migration
  def up
    remove_column :weapons_items, :quality
    remove_column :weapons_items, :decay_days
  end

  def down
  end
end
