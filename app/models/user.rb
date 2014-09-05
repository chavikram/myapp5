class User < ActiveRecord::Base

  PERMITTED_ATTRIBUTES = [:first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :time_zone, :gender]

  devise :database_authenticatable, :registerable,:omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :questions, inverse_of: :user, dependent: :destroy
  has_many :authentications, inverse_of: :user, dependent: :destroy

  def self.from_omniauth(omniauth)
    authentication = Authentication.where(provider: omniauth['provider'], uid: omniauth['uid'].to_s).first
    if authentication
      authentication.user
    else
      user = User.new
      user.apply_omniauth(omniauth)
      user
    end
  end

  def password_required?
    (authentications.empty? || !password.blank?) && super
  end

  def apply_omniauth(omniauth)
    OmniauthProviders.user_attributes_from_omniauth(omniauth).each do |attr, value|
      assign_attributes(attr => value) if send(attr).blank?
    end
    authentications.build(provider: omniauth['provider'], uid: omniauth['uid'].to_s)
  end


  def full_name
    "#{first_name} #{last_name}"
  end
  

  def meetup_id
    authentications.find { |a| a.provider == 'meetup' }.try(:uid)
  end

  private

  def make_empty_profile
    self.build_profile
    self.profile.save
  end
end
