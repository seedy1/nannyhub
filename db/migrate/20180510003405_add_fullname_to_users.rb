class AddFullnameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fullname, :string
    add_column :users, :phone, :string
    add_column :users, :role, :integer
    add_column :users, :city, :string
    add_column :users, :country, :string
  end
end
