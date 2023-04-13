class ChangeDefaultAndNullToUsersDeleteFalg < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :delete_flag, :boolean, default: false, null: false
  end
end
