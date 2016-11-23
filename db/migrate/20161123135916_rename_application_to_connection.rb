class RenameApplicationToConnection < ActiveRecord::Migration[5.0]
  def change
    rename_table :applications, :connections
  end
end
