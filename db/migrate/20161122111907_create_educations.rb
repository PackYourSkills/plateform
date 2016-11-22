class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :degree
      t.string :school
      t.date :end_time
      t.string :field
      t.references :packer, foreign_key: true

      t.timestamps
    end
  end
end
