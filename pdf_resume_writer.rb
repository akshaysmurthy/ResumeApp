require 'prawn'
class PDFResumeWriter
	def write(resume)
		name = resume.name
		Prawn::Document.generate("#{name}.pdf") do |f|
  			f.text "Name: #{name}"
  			f.text "Email: #{resume.email}"
		end
	end
end