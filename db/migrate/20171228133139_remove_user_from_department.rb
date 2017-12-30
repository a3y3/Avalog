class RemoveUserFromDepartment < ActiveRecord::Migration[5.1]
  def change
    remove_column :departments, :user_id, :text
  end
end
