class AddFunctionToArmoursItems < ActiveRecord::Migration
  def change
    add_column :armours_items, :function, :string
  end
end
