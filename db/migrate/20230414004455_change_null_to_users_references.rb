class ChangeNullToUsersReferences < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :user_classification_id, false
  end
end
