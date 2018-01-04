class AddShiftToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :shift, :text
  end
end
