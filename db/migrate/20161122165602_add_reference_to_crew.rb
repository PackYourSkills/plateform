class AddReferenceToCrew < ActiveRecord::Migration[5.0]
  def change
    add_reference :crews, :user, foreign_key: true
  end
end
