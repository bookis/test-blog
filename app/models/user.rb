class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments
  has_secure_password
  validates :username, presence: true, length: {minimum: 1}
end
