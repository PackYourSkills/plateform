class AddDescriptionToEducations < ActiveRecord::Migration[5.0]
  def change
    add_column :educations, :description, :text
    remove_column :educations, :degree
    remove_column :educations, :school
    remove_column :educations, :end_time
    remove_column :educations, :field
  end
end
