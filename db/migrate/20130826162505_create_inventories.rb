class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :user_id
      t.integer :bread, default: 0

      t.timestamps
    end
  end
end
