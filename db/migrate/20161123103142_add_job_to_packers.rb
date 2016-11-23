class AddJobToPackers < ActiveRecord::Migration[5.0]
  def change
    add_column :packers, :job, :string
  end
end
