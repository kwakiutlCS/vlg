class AddFunctionToWeaponsItems < ActiveRecord::Migration
  def change
    add_column :weapons_items, :function, :string
  end
end
