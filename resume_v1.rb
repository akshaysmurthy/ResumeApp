class Resume
	attr_accessor :name, :email,:age

	def initialize(attributes)
		@name = attributes[:name]
		@email = attributes[:email]
                @age = attributes[:age]
	end

        def to_printable_data
  	      "Name: #{self.name} \n Email: #{self.email} \n Age: #{self.age}"
        end
end
