class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :department, :string
    add_column :users, :username, :string
    add_column :users, :contact, :string
    add_column :users, :team, :string

  end
end
