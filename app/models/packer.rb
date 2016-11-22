class Packer < ApplicationRecord
  belongs_to :user

  has_many :educations, dependent: :destroy
  has_many :skills, dependent: :destroy
  has_one :application, dependent: :destroy
end
