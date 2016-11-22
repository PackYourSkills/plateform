class Packer < ApplicationRecord
  has_many :educations, dependent: :destroy
end
