class AddFunctionToClothesItems < ActiveRecord::Migration
  def change
    add_column :clothes_items, :function, :string
  end
end
