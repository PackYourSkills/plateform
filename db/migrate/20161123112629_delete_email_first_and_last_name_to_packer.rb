class DeleteEmailFirstAndLastNameToPacker < ActiveRecord::Migration[5.0]
  def change
    remove_column :packers, :email
    remove_column :packers, :first_name
    remove_column :packers, :last_name
    remove_column :packers, :age
    remove_column :packers, :password
    remove_column :packers, :city
    remove_column :packers, :country
    remove_column :packers, :story
  end
end
