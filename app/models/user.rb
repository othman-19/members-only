
class User < ApplicationRecord
  attr_accessor :token
  before_create :remember

  validates :name, presence: true
  validates :email, presence: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  has_many :posts

  def User.new_token
    SecureRandom.urlsafe_base64
  end 

  def User.create_digest(string)
    Digest::SHA1.hexdigest string
  end
  def remember 
    self.token = User.new_token
    self.remember_digest = User.create_digest(token) 
  end
  def forget
    self.remember_digest = nil
  end  


end
