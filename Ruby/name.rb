class Name
	
	attr_reader :first_name,:last_name
	#With this accesor I can read and write the variables.
	attr_accessor :title
	def initialize(title,first_name,last_name)
		@title=title
		@first_name=first_name
		@last_name=last_name
	end

=begin
I dont need to define this methods because I'm calling it through the attr_reader.
	 def title
		@title
	 end

	def first_name
		@first_name
	end

	def last_name
		@last_name
	end

=end

	def to_s
		@title + ' '+ @first_name + ' ' + @last_name
	end

end

name=Name.new("Mrs.","Karin","Fernandez")
puts "Name before the attr_writer: "
puts name.full_name
 #I can modify this because of the attr_writer
name.title="Dr."
puts "New title is: #{name.title}"
puts name