class User < ApplicationRecord
  
  before_create :create_remember_token
  validates :name, presence: true
  validates :email, presence: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)     
  end 

  def User.new_token
    Digest::SHA1.hexdigest SecureRandom.urlsafe_base64
  end 
end
