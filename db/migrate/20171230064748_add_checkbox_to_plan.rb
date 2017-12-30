class AddCheckboxToPlan < ActiveRecord::Migration[5.1]
  def change
    add_column :plans, :checkbox, :boolean
  end
end
