class Packer < ApplicationRecord
  belongs_to :user

  has_many :experiences, dependent: :destroy
  has_one :education, dependent: :destroy
  has_many :skills, dependent: :destroy
  has_many :connections, dependent: :destroy

  validates :website, :allow_blank => true, format: { :with => /((http|ftp)s?:\/\/)?([a-zA-Z0-9<>\.,!@#$%^:;&*()\-_+=]+:[a-zA-Z0-9<>\.,!@#$%^;:&*()\-_+=]+\@)?([a-zA-Z0-9\-\_]+(\/|\.)){2,}[:a-zA-Z0-9\#\?\=\_\.\-\/]*/i, message: "it has to be an url" }
  validates :cv_link, :allow_blank => true, format: { :with => /((http|ftp)s?:\/\/)?([a-zA-Z0-9<>\.,!@#$%^:;&*()\-_+=]+:[a-zA-Z0-9<>\.,!@#$%^;:&*()\-_+=]+\@)?([a-zA-Z0-9\-\_]+(\/|\.)){2,}[:a-zA-Z0-9\#\?\=\_\.\-\/]*/i, message: "it has to be an url" }
  validates :youtube_link, :allow_blank => true, format: { :with => /(?:https?:\/\/)?(?:(?:(?:www\.?)?youtube\.com(?:\/(?:(?:watch\?.*?(v=[^&\s]+).*)|(?:v(\/.*))|(channel\/.+)|(?:user\/(.+))|(?:results\?(search_query=.+))))?)|(?:youtu\.be(\/.*)?))/i, message: "it has to be a youtube link" }

  has_attachment :profile_photo
  has_attachment :cover_picture

  def song_youtube_id
    if youtube_link != "" && youtube_link != nil
      youtube_link.match(/(?:https?:\/\/)?(?:www\.)?youtu\.?be(?:\.com)?\/?.*(?:watch|embed)?(?:.*v=|v\/|\/)([\w\-_]+)/i)[1]
    end
  end

  def progress
    percent = 0
    percent+=5 if self.sexe.present?
    percent+=5 if self.nationality.present?
    percent+=5 if self.phone.present?
    percent+=5 if self.skype.present?
    percent+=5 if self.youtube_link.present?
    percent+=5 if self.website.present?
    percent+=10 if self.cv_link.present?
    percent+=15 unless self.profile_photo.nil?
    percent+=10 if self.user.first_name.present?
    percent+=5 if self.user.last_name.present?
    percent+=10 if self.user.story.present?
    percent+=8 if self.user.address.present?
    percent+=1 if self.user.country.present?
    percent+=1 if self.user.city.present?
    percent+=10 if self.user.birthdate.present?
    return percent
  end

  def profile_photo_url
    profile_photo.present? ? profile_photo.path : 'http://orig00.deviantart.net/ee5b/f/2015/105/7/c/goku_ssj_facebook_profil_by_mjd360-d8ps1ub.jpg'
  end
end
