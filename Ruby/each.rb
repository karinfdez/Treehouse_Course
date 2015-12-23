
#First example
# array =[0,1,2,3,4,5]
# array.each do |item|
# 	puts "The curren item is #{item}"
# end


#hash iteration
#The each method is also each_pair
business={"name"=>"Treehouse","location"=>"Portland"}

business.each do |key,value|
	puts "The hash key is #{key} and the value is #{value}"
end

#If I want to iterate only with the keys of the hash:

# business.each_key do |key|
# 	puts "The key is #{key}"
# end

business.each_value do |value|
	puts "The value is #{value}"
end