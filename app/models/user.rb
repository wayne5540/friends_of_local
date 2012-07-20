class User < ActiveRecord::Base
  attr_accessible :email, :name, :sex, :password, :password_confirmation
  has_secure_password
  before_save { |user| user.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end
