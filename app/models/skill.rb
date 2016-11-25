class Skill < ApplicationRecord
  belongs_to :packer

    validates :type_of_skill, inclusion: { in: ["language", "professionnal"] }

end
