class Crew < ApplicationRecord
  belongs_to :user

  has_many :missions, dependent: :destroy

  validates :website, :allow_blank => true, format: { :with => /((http|ftp)s?:\/\/)?([a-zA-Z0-9<>\.,!@#$%^:;&*()\-_+=]+:[a-zA-Z0-9<>\.,!@#$%^;:&*()\-_+=]+\@)?([a-zA-Z0-9\-\_]+(\/|\.)){2,}[:a-zA-Z0-9\#\?\=\_\.\-\/]*/i, message: "it has to be an url" }
  has_attachments :crew_photos, maximum: 6
  has_attachment :logo
  has_attachment :cover_picture

    # geocode
  geocoded_by :address
  after_validation :geocode, if: :full_address_changed?

  private

  def full_address_changed?
    address_changed? || city_changed? || country_changed?
  end

end
