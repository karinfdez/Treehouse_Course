#Creates a shopping list printed on as a list when the
#items are added to the list.
def create_list
	print "What is the list name?: "
	name_list=gets.chomp
	hash={"name"=>name_list,"items"=>Array.new}
	
	return hash
end


def add_list_item
	
	print "What is the item called?: "
	item_name=gets.chomp
	print "How much?: "
	quantity=gets.chomp.to_i
	hash={"name"=>item_name,"quantity"=>quantity}

	return hash
end

def print_separator()
	puts "-"*60
end

def print_list(list)
	puts "List: #{list["name"]}"
	print_separator()
	list["items"].each do |item| 
	puts "\t Item: "+ item["name"] + "\t\t\t"+
	"Quantity: "+item["quantity"].to_s
  end
    
  print_separator()
end

list=create_list()

loop do
	print "Would you like to add items to the list?(y/n?): "
	answer=gets.chomp.downcase
	
	if answer=="n"
		break
	else
		item_added=add_list_item()
		list["items"].push(item_added)
	end

end

if list["items"].length==0
	puts "The list named '#{list["name"]}' is empty."
else
	print_list(list)
end

 
