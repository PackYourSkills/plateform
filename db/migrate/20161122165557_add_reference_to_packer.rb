class AddReferenceToPacker < ActiveRecord::Migration[5.0]
  def change
    add_reference :packers, :user, foreign_key: true
  end
end
