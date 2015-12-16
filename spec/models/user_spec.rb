require 'rails_helper'

RSpec.describe User do
	context "when created with   new  " do
		it "validates the length of a valid username" do
			expect(User.new(username: "")).to_not be_valid
		end
	end
end
