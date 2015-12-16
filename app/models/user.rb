class User < ActiveRecord::Base
	has_many :ratings
	has_many :entries
	validates :email, presence: true, uniqueness: true
	validates :username, presence: true,  uniqueness: true, length: {minimum: 5}
end