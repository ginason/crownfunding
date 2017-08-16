class User < ActiveRecord::Base
  authenticates_with_sorcery!
  # has_secure_password
  has_many :pledges

  validates :password, length: { minimum: 8, too_short: "password characters is too short"}, on: :create
  validates :password, confirmation: true, on: :create
  validates :password_confirmation, presence: true, on: :create

  validates :email, uniqueness: true
end
