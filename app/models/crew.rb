class Crew < ApplicationRecord
  has_many :missions, dependent: :destroy
end
