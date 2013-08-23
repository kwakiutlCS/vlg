class CreateToolsItems < ActiveRecord::Migration
  def change
    create_table :tools_items do |t|
      t.string :name
      t.integer :mass
      t.string :decay
      t.text :assemble
      t.string :workshop
      t.text :assemble_skills
      t.text :tools
      t.integer :result

      t.timestamps
    end
  end
end
