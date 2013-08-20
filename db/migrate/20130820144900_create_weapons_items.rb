class CreateWeaponsItems < ActiveRecord::Migration
  def change
    create_table :weapons_items do |t|
      t.string :name
      t.integer :mass
      t.string :skill
      t.string :decay
      t.integer :decay_days
      t.text :assemble
      t.integer :quality
      t.text :assemble_skills
      t.string :workshop
      t.text :tools

      t.timestamps
    end
  end
end
