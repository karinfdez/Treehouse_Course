#BLOCK METHOD
# def block_method
# 	puts "This is the first line in block_method"
# 	3.times do 
# 	#yield is the keyword that let me jump to the stament that has the same 
# 	#name as the mehtod.
# 	 yield
# 	end
# 	puts "This statement goes after the yield keyword."
# end

# block_method do
# 	puts "This statement is called from the block."
# end

#BLOCK ARGUMENT
# def get_name
# 	puts "Enter your name:"
# 	name=gets.chomp
# 	#Here name is passed as an argument for the yield statement.
# 	yield name
# end

# get_name do |name|
# 	puts "#{name} is a cool name!."
# end


#CALLING BLOCKS

def get_name(prompt, &block)
#Only runs this if it's sure the get_name block below is declared.
	if block_given?
		print prompt + ": "
		name=gets.chomp
		print prompt + ": "
		age=gets.chomp
		#With yield will be yield name,age
		block.call(name,age)
	else
		puts "No block given."
	end
end

get_name ("Enter your name: ") do |name,age|
	puts "That's a cool name: #{name} and a cool age: #{age}."
end
