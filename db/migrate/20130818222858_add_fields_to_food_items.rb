class AddFieldsToFoodItems < ActiveRecord::Migration
  def change
    add_column :food_items, :decay, :string
    add_column :food_items, :decay_probability, :integer
    add_column :food_items, :assemble, :text
    add_column :food_items, :workshop, :string
    add_column :food_items, :assemble_skills, :text
    add_column :food_items, :tools, :text
    add_column :food_items, :yield, :integer
  end
end
