class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :type
      t.date :start_time
      t.date :end_time
      t.string :organisation
      t.string :position
      t.text :description

      t.timestamps
    end
  end
end
