class AddAgeToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :age, :integer
    add_column :users, :address, :text
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
