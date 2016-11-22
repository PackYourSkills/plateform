class CreateMissions < ActiveRecord::Migration[5.0]
  def change
    create_table :missions do |t|
      t.string :title
      t.string :duration
      t.text :skill
      t.text :description
      t.integer :hours_per_day
      t.integer :days_per_week
      t.text :hosting_condition
      t.string :food
      t.text :other_comment
      t.string :country
      t.string :city
      t.string :address
      t.references :crew, foreign_key: true

      t.timestamps
    end
  end
end
