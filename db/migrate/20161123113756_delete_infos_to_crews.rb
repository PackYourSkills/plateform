class DeleteInfosToCrews < ActiveRecord::Migration[5.0]
  def change
    remove_column :crews, :description
    remove_column :crews, :city
    remove_column :crews, :country
    remove_column :crews, :address
    remove_column :crews, :email
  end
end
