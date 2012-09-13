class Resume
	attr_accessor :name, :email

	def initialize(attributes)
		@name = attributes[:name]
		@email = attributes[:email]
	end
end