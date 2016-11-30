class Connection < ApplicationRecord
  belongs_to :packer
  belongs_to :mission

  def draft?
    self.status == 'draft'
  end

  def online?
    self.status == 'online'
  end

  def suspended?
    self.status == 'suspended'
  end

  def accept
    self.status = 'accepted'
    self.read = true
    self.save
    self.mission.close
  end

  def accepted?
    self.status == 'accepted'
  end

  def refuse
    self.status = 'refused'
    self.save
  end

  def refused?
    self.status == 'refused'
  end

  def cancel
    self.status = 'canceled'
    self.save
  end

  def canceled?
    self.status == 'canceled'
  end

  def confirm
    self.status = 'confirmed'
    self.save
    self.mission.validate
  end

  def confirmed?
    self.status == 'confirmed'
  end
end
