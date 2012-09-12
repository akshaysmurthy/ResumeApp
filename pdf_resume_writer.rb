require 'prawn'
class PDFResumeWriter
	def write(resume)
		name = resume.name
		Prawn::Document.generate("#{name}.pdf") do |f|
                      f.text resume.to_printable_data
		end
	end
end
