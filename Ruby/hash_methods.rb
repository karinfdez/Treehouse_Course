hash={"item"=>"Bread", "quantity"=>1,"brand"=>"Treehouse Bread Company"}

puts "Hash: #{hash}"

# Using print to put all in a same line
print "hash.invert:"
puts hash.invert

print "hash.shift:"
#Returns an array of the value and key removed.
puts hash.shift.inspect
#Now shows the hash without the first key and value.
puts hash.inspect

#Mergin 2 hashes:

hash2={"other"=>"hash","test"=>"test_2"}

print "New merge hash: "
puts new_hash=hash.merge(hash2)
