class Crew < ApplicationRecord
  belongs_to :user

  has_many :missions, dependent: :destroy

  validates :website, :allow_blank => true, format: { :with => /((http|ftp)s?:\/\/)?([a-zA-Z0-9<>\.,!@#$%^:;&*()\-_+=]+:[a-zA-Z0-9<>\.,!@#$%^;:&*()\-_+=]+\@)?([a-zA-Z0-9\-\_]+(\/|\.)){2,}[:a-zA-Z0-9\#\?\=\_\.\-\/]*/i, message: "it has to be an url" }
  has_attachments :crew_photos, maximum: 6
  has_attachment :logo
  has_attachment :cover_picture

    # geocode
 geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?



  def progress
    percent = 0
    percent+=10 if self.name.present?
    percent+=10 unless self.logo.nil?
    percent+=5 if self.social_issue.present?
    percent+=5 if self.mission.present?
    percent+=10 if self.values.present?
    percent+=10 if self.story.present?
    percent+=5 if self.team_description.present?
    percent+=5 if self.nb_collaborators.present?
    percent+=4 if self.phone.present?
    percent+=4 if self.skype.present?
    percent+=4 if self.twitter.present?
    percent+=4 if self.facebook.present?
    percent+=10 if self.website.present?
    percent+=8 if self.user.address.present?
    percent+=1 if self.user.country.present?
    percent+=1 if self.user.city.present?
    percent+=4 if self.creation_date.present?
    return percent
  end

  private

  def full_address
    self.address + ', ' + self.city + ', ' + self.country
  end

  def full_address_changed?
    address_changed? || city_changed? || country_changed?
  end

end
