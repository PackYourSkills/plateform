class Crew < ApplicationRecord
  belongs_to :user

  has_many :missions, dependent: :destroy

  validates :email, presence: true
  validates :description, :allow_blank => true, length: { within: 100..500 }
  validates :website, :allow_blank => true, format: { :with => /((http|ftp)s?:\/\/)?([a-zA-Z0-9<>\.,!@#$%^:;&*()\-_+=]+:[a-zA-Z0-9<>\.,!@#$%^;:&*()\-_+=]+\@)?([a-zA-Z0-9\-\_]+(\/|\.)){2,}[:a-zA-Z0-9\#\?\=\_\.\-\/]*/i, message: "it has to be an url" }


end
