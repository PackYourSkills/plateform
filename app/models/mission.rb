class Mission < ApplicationRecord
  belongs_to :crew
  has_many :connections, dependent: :destroy
  has_attachments :mission_photos, maximum: 6
  has_attachment :cover_picture
  has_attachment :hosting_photo

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
