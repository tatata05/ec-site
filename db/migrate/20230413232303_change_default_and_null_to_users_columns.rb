class ChangeDefaultAndNullToUsersColumns < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :password, :boolean, default: '', null: false
    change_column :users, :last_name, :boolean, default: '', null: false
    change_column :users, :first_name, :boolean, default: '', null: false
    change_column :users, :zipcode, :boolean, default: '', null: false
    change_column :users, :prefecture, :boolean, default: '', null: false
    change_column :users, :municipality, :boolean, default: '', null: false
    change_column :users, :address, :boolean, default: '', null: false
    change_column :users, :apartments, :boolean, default: '', null: false
    change_column :users, :email, :boolean, default: '', null: false
    change_column :users, :phone_number, :boolean, default: '', null: false
  end
end
