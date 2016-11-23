class Crew < ApplicationRecord
  belongs_to :user

  has_many :missions, dependent: :destroy

  validates :name, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :social_issue, presence: true
  validates :mission, presence: true
  validates :description, presence: true, length: { within: 100..500 }
  validates :values, presence: true
  validates :website, :allow_blank => true, format: { :with => /((http|ftp)s?:\/\/)?([a-zA-Z0-9<>\.,!@#$%^:;&*()\-_+=]+:[a-zA-Z0-9<>\.,!@#$%^;:&*()\-_+=]+\@)?([a-zA-Z0-9\-\_]+(\/|\.)){2,}[:a-zA-Z0-9\#\?\=\_\.\-\/]*/i, message: "it has to be an url" }


end
