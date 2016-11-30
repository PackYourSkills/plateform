class AddInformationToCrew < ActiveRecord::Migration[5.0]
  def change
    add_column :crews, :story, :text
    add_column :crews, :address, :string
    add_column :crews, :country, :string
    add_column :crews, :city, :string
    add_column :crews, :zip_code, :string
  end
end
