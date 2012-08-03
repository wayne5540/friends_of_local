class User < ActiveRecord::Base
  attr_accessible :email, :name, :sex, :password, :password_confirmation, :contact, :trip_detail, :introduce, :trip_plan, :profile_photo, :country, :city, :language
  has_secure_password
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }, :if => :should_validate_password?
  validates :password_confirmation, presence: true, :if => :should_validate_password?
  attr_accessor :updating_password

  def should_validate_password?
    updating_password
  end

  def self.search(search)
    if search
      find(:all, :conditions => { :country => search }, :order => 'updated_at DESC')
    else
      find(:all, :order => 'updated_at DESC')
    end
  end


  private
  	def create_remember_token
  		self.remember_token = SecureRandom.urlsafe_base64
  	end
end
