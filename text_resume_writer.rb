class TextResumeWriter
	def write(resume)
		name = resume.name
		File.open("#{name}.txt", 'w+') do |f| 
			f.puts "Name: #{name}"
  	 		f.puts "Email: #{resume.email}"
		end			
	end
end