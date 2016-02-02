class User < ActiveRecord::Base
	has_secure_password #necessary for the Bcrypt gem
	validates_uniqueness_of:email #allows unique email for each user
end
