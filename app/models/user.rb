class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :omniauthable, omniauth_providers: [:facebook, :github, :google_oauth2]

         validates :password, length: { in: 6..128 }, on: :create
           validates :password, length: { in: 6..128 }, on: :update, allow_blank: true

has_one_attached :avatar
has_many :newsletters
has_many :articles, through: :newsletters
has_many :events, through: :articles

def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do | user |
      user.first_name = provider_data.info.first_name
      user.last_name = provider_data.info.last_name
      user.email = provider_data.info.email
      user.password = Devise.friendly_token[0, 20]
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
