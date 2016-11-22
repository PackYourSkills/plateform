class Mission < ApplicationRecord
  belongs_to :crew
  has_many :applications, dependent: :destroy
end
