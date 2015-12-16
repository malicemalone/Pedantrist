class Entry < ActiveRecord::Base
	belongs_to :user
	has_many :ratings
	has_many :raters, class_name: "User"
	validates_presence_of :user_id, null: false
	validates_presence_of :rating
end
