class RemoveDeptFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :department, :text
  end
end
