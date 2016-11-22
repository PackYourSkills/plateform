class Packer < ApplicationRecord
  has_many :educations, dependent: :destroy
  has_many :skills, dependent: :destroy
end
