require 'rails_helper'

RSpec.describe Entry do
 context "when created with    new  " do
 	it "should not be valid when given no defaults" do 
 		expect(Entry.new).to_not be_valid
    end

 	it "should have a default rating of 0" do
 		id = 1
 		expect(Entry.new(user_id: id).rating).to eq 0
 	end
 end
end
