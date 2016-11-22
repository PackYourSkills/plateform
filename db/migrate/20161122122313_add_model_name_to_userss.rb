class AddModelNameToUserss < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :model_name, :string
  end
end
