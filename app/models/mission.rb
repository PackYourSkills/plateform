class Mission < ApplicationRecord
  belongs_to :crew
  has_many :connections, dependent: :destroy
end
