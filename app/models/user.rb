require 'bcrypt'

class User < ActiveRecord::Base
	include BCrypt
	has_many :ratings
	has_many :entries
	validates :email, presence: true, uniqueness: true
	validates :username, presence: true,  uniqueness: true, length: {minimum: 5}


	def password
    	@password ||= Password.new(password_hash)
  	end

  	def password=(new_password)
	    @password = Password.create(new_password)
	    self.password_hash = @password
  	end
 end

