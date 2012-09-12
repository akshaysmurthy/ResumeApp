require 'spec_helper'

describe Resume do
	it "should have a name and email" do
		resume = Resume.new(:name => 'Name', :email => 'name@email.com')
		resume.name.should eql('Name')
		resume.email.should eql('name@email.com')
	end	
end	