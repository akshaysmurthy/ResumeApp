class ResumeFactory
	def self.create(format)
		if format == "Text"
			TextResumeWriter.new
		else
			PDFResumeWriter.new
		end
	end
end