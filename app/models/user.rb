class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :crew, dependent: :destroy
  has_one :packer, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

  validates :story, :allow_blank => true, length: { within: 0..500 }

  # geocode
  geocoded_by :address
  after_validation :geocode, if: :full_address_changed?

  ## Facebook Autentification

  def self.find_for_facebook_oauth(auth)
    user_params = auth.to_h.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)

    user = User.where(provider: auth.provider, uid: auth.uid).first
    user ||= User.where(email: auth.info.email).first # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.role = "packer"
      user.save
      packer = user.build_packer
      packer.save
    end
    return user
  end

  ## method to verify role
  def crew?
    self.role == "crew"
  end

  def full_address_changed?
    address_changed? || city_changed? || country_changed?
  end

  def age
    if self.birthdate == nil
      nil
    else
      dob = self.birthdate
      now = Time.now.utc.to_date
      now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    end
  end
end
