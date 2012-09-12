require 'prawn'

class Resume
	def read
		puts "Enter name: "
		@name = gets.chomp
		puts "Enter email: "
		@email = gets.chomp
		puts "Enter the format:"
		puts "1 - TXT"
		puts "2 - PDF"
		gets.chomp
	end	

	def write_to_txt
		File.open("#{@name}.txt", 'w+') do |f| 
			f.puts "Name: #{@name}"
  	 		f.puts "Email: #{@email}"
		end	
	end

	def write_to_pdf
		Prawn::Document.generate("#{@name}.pdf") do |f|
  			f.text "Name: #{@name}"
  			f.text "Email: #{@email}"
		end
	end
end

resume = Resume.new

format = resume.read
if format == "1"
	resume.write_to_txt
elsif format == "2"
	resume.write_to_pdf
else
	puts "Invalid format choice"
end

