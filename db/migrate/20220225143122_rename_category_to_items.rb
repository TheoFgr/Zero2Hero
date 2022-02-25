class RenameCategoryToItems < ActiveRecord::Migration[6.1]
  def change
    rename_column :items, :category, :type
  end
end
