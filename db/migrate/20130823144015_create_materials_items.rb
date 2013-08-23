class CreateMaterialsItems < ActiveRecord::Migration
  def change
    create_table :materials_items do |t|
      t.string :name
      t.integer :mass, default: 1
      t.string :decay
      t.integer :decay_probability, default: 0
      t.string :function
      t.integer :quality, default: 0

      t.timestamps
    end
  end
end
