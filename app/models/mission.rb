class Mission < ApplicationRecord
  belongs_to :crew
  has_many :connections, dependent: :destroy
  has_attachments :mission_photos, maximum: 6
  has_attachment :cover_picture
  has_attachment :hosting_picture

  # geocode
  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  def full_address
    self.address + ', ' + self.city + ', ' + self.country
  end

  def full_address_changed?
    address_changed? || city_changed? || country_changed?
  end

  def draft?
    self.status == 'draft'
  end

  def online?
    self.status == 'online'
  end

  def suspended
    self.status = 'suspended'
    self.save
  end

  def suspended?
    self.status == 'suspended'
  end

  def cancel
    self.status = 'canceled'
    self.save
    self.connections.each do |connection|
      connection.cancel
    end
  end

  def canceled?
    self.status == 'canceled'
  end

  def close
    self.status = 'closed'
    self.save
    self.connections.each do |connection|
      if connection.accepted?
      elsif connection.draft?
        connection.cancel
      else
        connection.refuse
      end
    end
  end

  def closed?
    self.status == 'closed'
  end

  def validate
    self.status = 'validated'
    self.save
  end

  def validated?
    self.status == 'validated'
  end
end
