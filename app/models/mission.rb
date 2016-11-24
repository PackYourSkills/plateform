class Mission < ApplicationRecord
  belongs_to :crew
  has_many :connections, dependent: :destroy

  # geocode
  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  def full_address
    self.address + ', ' + self.city + ', ' + self.country
  end

  def full_address_changed?
    address_changed? || city_changed? || country_changed?
  end

end
