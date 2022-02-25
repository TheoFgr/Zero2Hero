class RenameTypeToItems < ActiveRecord::Migration[6.1]
  def change
    rename_column :items, :type, :category
  end
end
