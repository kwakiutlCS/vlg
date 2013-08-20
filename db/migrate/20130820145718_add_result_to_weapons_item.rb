class AddResultToWeaponsItem < ActiveRecord::Migration
  def change
    add_column :weapons_items, :result, :integer, default: 1
  end
end
