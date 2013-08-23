class RemoveQualityAndDecayDaysFromArmoursItems < ActiveRecord::Migration
  def up
    remove_column :armours_items, :quality
    remove_column :armours_items, :decay_days
  end

  def down
  end
end
