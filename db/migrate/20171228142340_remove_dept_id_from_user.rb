class RemoveDeptIdFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :dept_id, :integer
  end
end
