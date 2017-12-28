class AddTimings2ToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :timings2, :text
  end
end
