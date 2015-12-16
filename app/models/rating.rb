class Rating < ActiveRecord::Base
	belongs_to :rater, class_name: "User"
	belongs_to :user
	belongs_to :entry
	validates :star_rating, :numericality => { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5 }
end
