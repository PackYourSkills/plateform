class AddReadToConnections < ActiveRecord::Migration[5.0]
  def change
    add_column :connections, :read, :boolean, default: false
  end
end
