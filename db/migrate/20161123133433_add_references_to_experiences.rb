class AddReferencesToExperiences < ActiveRecord::Migration[5.0]
  def change
    add_reference :experiences, :packer, foreign_key: true
  end
end
