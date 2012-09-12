require 'spec_helper'

describe 'ResumeWriter' do	
	let(:resume){Resume.new(:name => 'Name', :email => 'name@email.com')}
	it "should create a text file of a resume" do
		TextResumeWriter.new.write(resume)
		file_name = "#{resume.name}.txt"
		File.exist?(file_name).should be_true
		File.delete(file_name)
	end
	it "should create a pdf file of a resume" do		
		PDFResumeWriter.new.write(resume)
		file_name = "#{resume.name}.pdf"
		File.exist?(file_name).should be_true
		File.delete(file_name)
	end

end