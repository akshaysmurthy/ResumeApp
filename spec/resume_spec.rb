require 'spec_helper'

describe Resume do
        let(:resume){Resume.new(:name => 'Name', :email => 'name@email.com',:age => 22)}
        it "should have a name, email and age" do
		resume.name.should eql('Name')
		resume.email.should eql('name@email.com')
                resume.age.should eql(22)
	end

        it "should format the data in a printable format" do
                output = "Name: #{resume.name} \n Email: #{resume.email} \n Age: #{resume.age}"
                resume.to_printable_data.should eql(output)
        end
end
