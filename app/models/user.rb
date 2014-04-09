class User < ActiveRecord::Base
  has_many :links
  has_secure_password

	validates_presence_of :username
	validates_uniqueness_of :username
	validates_presence_of :email
	validates_uniqueness_of :email
	validates_presence_of :password_digest

end
