class Entry < ActiveRecord::Base
	belongs_to :user
	has_many :ratings
	has_many :raters, class_name: "User"
end
