class RemoveTimings2FromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :timings2, :text
  end
end
