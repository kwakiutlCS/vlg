class CreateClothesItems < ActiveRecord::Migration
  def change
    create_table :clothes_items do |t|
      t.string :name
      t.integer :mass, default: 1
      t.integer :moral, default: 0
      t.string :decay, default: ""
      t.integer :decay_days, default: 100
      t.integer :quality, default: 0
      t.text :assemble, default: {}
      t.string :workshop, default: "weaver"
      t.text :assemble_skills, default: {}
      t.text :tools, default: {}
      t.integer :result, default: 1

      t.timestamps
    end
  end
end
