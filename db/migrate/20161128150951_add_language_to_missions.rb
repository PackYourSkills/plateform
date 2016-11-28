class AddLanguageToMissions < ActiveRecord::Migration[5.0]
  def change
    add_column :missions, :language, :string
  end
end
