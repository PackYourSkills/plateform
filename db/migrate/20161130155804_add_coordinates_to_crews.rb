class AddCoordinatesToCrews < ActiveRecord::Migration[5.0]
  def change
    add_column :crews, :latitude, :float
    add_column :crews, :longitude, :float
  end
end
