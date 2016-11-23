class AddInfosToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :story, :text
    add_column :users, :address, :string
    add_column :users, :country, :string
    add_column :users, :city, :string
    add_column :users, :zip_code, :string
    add_column :users, :birthdate, :date
  end
end
