#Loop do example
# numbers = []
# number = 0
# loop do
#   if numbers.length==3
#     break
#   else
#     numbers.push(number)
#     number+=1
#   end
# end
# puts numbers.inspect
#Guess random number between 0 and 5
#Loop_conditional
# random_number=Random.new.rand(5)
# loop do
# 	puts "Guess a number between 0 and 5(e to exit): "
# 	user_answer=gets.chomp
# 	if user_answer.downcase=="e"
# 		puts "The number was #{random_number}."
# 		break
# 	else
# 		if user_answer.to_i==random_number
# 			puts "You guessed correctly."
# 			break
# 		else
# 			puts "That's not the correct answer.Try again."
# 		end
#     end
# end
#Loop conditional number
# loop do
# 	puts "Enter a number greater than 10 to exit: "
# 	answer=gets.chomp.to_i
# 	break if answer>10
# end
#Loop_name
# def get_name
# 	name=""
# 	loop do
# 		print "Enter your name (minimum 2 characters, no numbers): "
# 		name=gets.chomp
# 		# name.index is to check if there are any digits on the string.
# 		if name.length>=2 && !name.index(/\d/)
# 			puts "Hi,#{name}"
# 			break
# 		else
# 			puts "Name must be longer than 2 characters and not contain numbers."
# 		end
# 	end
# 	return name
# end
# get_name
#While_loop
# answer=""
# while answer !="n"
# 	puts "Do you want me to repeat this pointless loop again?(type y/n)"
# 	answer=gets.chomp.downcase
# end
#While_loop
# def print_hello(number_of_times)
# 	i=0
# 	while i<number_of_times
#     	puts "Hello"
#     	i+=1
#     end
# end
# answer=0
# while answer<5
# 	print "How many times do you want to print Hello?. enter a number greater than 5 to exit."
# 	answer=gets.chomp.to_i
# 	print_hello(answer)
# end
#until_loop
answer=""
until answer=="no" 
	print "Do you want this loop to continue?(Press yes or no): "
	answer=gets.chomp.downcase
end









