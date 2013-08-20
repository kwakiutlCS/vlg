class RemoveQualityFromClothesItems < ActiveRecord::Migration
  def up
    remove_column :clothes_items, :quality

    change_column :clothes_items, :assemble, :text, default: "{}"
    change_column :clothes_items, :tools, :text, default: "{}"
    change_column :clothes_items, :assemble_skills, :text, default: "{}"
    
  end

  def down
  end
end
