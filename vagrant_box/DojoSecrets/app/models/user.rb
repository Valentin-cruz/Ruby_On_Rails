class User < ApplicationRecord
  has_secure_password

  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: {with: EMAIL_REGEX}
  before_validation :email_lowercase

  def email_lowercase
    self.email = email.downcase
  end
end
