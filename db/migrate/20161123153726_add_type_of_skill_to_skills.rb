class AddTypeOfSkillToSkills < ActiveRecord::Migration[5.0]
  def change
    rename_column :skills, :type, :type_of_skill
  end
end
