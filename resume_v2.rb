require 'prawn'

	class Resume
		def read(name,email,format)
			@name = name
			@email = email
	        if format == "1"
	 	       	write_to_txt
	        elsif format == "2"
	   	        write_to_pdf
	        else
	            raise 'Invalid File Format'
	        end
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
