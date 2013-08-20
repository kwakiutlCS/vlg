class CreateArmoursItems < ActiveRecord::Migration
  def change
    create_table :armours_items do |t|
      t.string :name
      t.integer :mass
      t.string :decay
      t.integer :decay_days
      t.integer :quality
      t.text :assemble
      t.string :workshop
      t.text :assemble_skills
      t.text :tools
      t.integer :result

      t.timestamps
    end
  end
end
