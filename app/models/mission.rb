class Mission < ApplicationRecord
  belongs_to :crew
  has_many :connections, dependent: :destroy
  has_attachments :photos, maximum: 3

  # geocode
  geocoded_by :full_address
  after_validation :geocode, if: :address_changed?

  def full_address
    self.address + ', ' + self.city + ', ' + self.country
  end

end
