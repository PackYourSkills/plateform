class AddValuesToCrews < ActiveRecord::Migration[5.0]
  def change
    remove_column :crews, :values
    add_column :crews, :value1, :string
    add_column :crews, :value2, :string
    add_column :crews, :value3, :string
    add_column :crews, :quote, :string
    add_column :crews, :quote_author, :string
  end
end
