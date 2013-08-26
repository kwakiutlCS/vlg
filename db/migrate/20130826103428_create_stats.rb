class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :user_id
      t.integer :str
      t.integer :int
      t.integer :con
      t.integer :cha
      t.integer :dex
      t.integer :hunger
      t.integer :moral
      t.integer :health

      t.timestamps
    end
  end
end
