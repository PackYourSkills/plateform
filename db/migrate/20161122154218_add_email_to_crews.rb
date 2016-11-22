class AddEmailToCrews < ActiveRecord::Migration[5.0]
  def change
    add_column :crews, :email, :string
  end
end
