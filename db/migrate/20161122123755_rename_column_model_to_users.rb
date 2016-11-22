class RenameColumnModelToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :model_name, :role
  end
end
