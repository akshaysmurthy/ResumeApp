class Resume
	def read
		puts "Enter name: "
		@name = gets.chomp
		puts "Enter email: "
		@email = gets.chomp
	end	

	def write
		File.open("#{@name}.txt", 'w+') do |f| 
			f.puts "Name: #{@name}"
  	 		f.puts "Email: #{@email}"
		end	
	end
end

resume = Resume.new
resume.read
resume.write
