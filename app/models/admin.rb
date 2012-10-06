class Admin < ActiveRecord::Base
  attr_accessible :email, :password_digest, :username
  has_secure_password
  has_many :services
end
