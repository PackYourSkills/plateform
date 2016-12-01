class AddValuesToPackers < ActiveRecord::Migration[5.0]
  def change
    add_column :packers, :value1, :string
    add_column :packers, :value2, :string
    add_column :packers, :value3, :string
    add_column :packers, :quote, :string
    add_column :packers, :quote_author, :string
  end
end
