class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]


has_one_attached :avatar
has_many :newsletters
has_many :articles, through: :newsletters
has_many :events, through: :articles

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end

  def full_name
    @full_name = "#{self.first_name} #{self.last_name}"
  end

  def initials
     @initials = "#{self.first_name[0]}.#{self.last_name[0]}."
  end

  def print_name
    @print_name = "#{self.first_name[0]}. #{self.last_name}"
  end
end
