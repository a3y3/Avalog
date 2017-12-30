class AddDeptIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :dept_id, :integer
  end
end
