#Program that request user name and a number to test if this 
#number is divisible by 3.

def get_name()
  print "Enter your name: "
  return gets.chomp
end

def get_number()
  print "Hello #{get_name()}. What number would you like to test?: "
  return gets.chomp.to_i
end

number=get_number()

def divisible_by_3?(number)
  if number%3==0
    puts "#{number} it's divisible by 3"
  else
    puts "#{number} it's not divisible by 3"
  end
end

divisible_by_3?(number)
