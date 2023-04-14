class ChangeDefaultAndNullToUsersColumns < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :password, :string, default:'', null: false
    change_column :users, :last_name, :string, default:'', null: false
    change_column :users, :first_name, :string, default:'', null: false
    change_column :users, :zipcode, :string, default:'', null: false
    change_column :users, :prefecture, :string, default:'', null: false
    change_column :users, :municipality, :string, default:'', null: false
    change_column :users, :address, :string, default:'', null: false
    change_column :users, :apartments, :string, default:'', null: false
    change_column :users, :email, :string, default:'', null: false
    change_column :users, :phone_number, :string, default:'', null: false
  end
end
