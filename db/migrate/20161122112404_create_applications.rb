class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.text :message
      t.string :status
      t.references :packer, foreign_key: true
      t.references :mission, foreign_key: true

      t.timestamps
    end
  end
end
