#Loop do example

numbers = []

number = 0

loop do 
  if numbers.length==3
    break
  else
    numbers.push(number)
    number+=1
  end
end

puts numbers.inspect


