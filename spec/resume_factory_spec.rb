describe ResumeFactory do
	it "should create the writer depending on the Parameter" do
		ResumeFactory.create("Text").class.name.should eql("TextResumeWriter")
		ResumeFactory.create("PDF").class.name.should eql("PDFResumeWriter")
	end
end