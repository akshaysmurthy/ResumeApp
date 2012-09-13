class Resume
	def read(name,email)
		@name = name
		@email = email
	   	write
	end

	def write
		File.open("#{@name}.txt", 'w+') do |f| 
			f.puts "Name: #{@name}"
  	 		f.puts "Email: #{@email}"
		end	
	end
end
