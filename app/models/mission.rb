class Mission < ApplicationRecord
  belongs_to :crew
  has_many :connections, dependent: :destroy

  # geocode
  geocoded_by :full_address
  after_validation :geocode, if: :address_changed?

  def full_address
    self.address + ', ' + self.city + ', ' + self.country
  end

end
