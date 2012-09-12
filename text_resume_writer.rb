class TextResumeWriter
	def write(resume)
		name = resume.name
		File.open("#{name}.txt", 'w+') do |f|
                        f.puts resume.to_printable_data
		end
	end
end
