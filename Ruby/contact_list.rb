contact_list=[]

def ask_user(question,kind="string")
	print question+ " "
	answer=gets.chomp
	answer=answer.to_i if kind=="number"
	return answer
end

answer=ask_user("What is your name?: ")
puts "The answer is #{answer}"
