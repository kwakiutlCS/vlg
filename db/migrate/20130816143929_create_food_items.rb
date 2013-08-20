class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.integer :mass
      t.integer :hunger
      t.integer :moral
      t.integer :str
      t.integer :int
      t.integer :cha
      t.integer :dex

      t.timestamps
    end
  end
end
