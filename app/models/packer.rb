class Packer < ApplicationRecord
  has_many :skills, dependent: :destroy
end
