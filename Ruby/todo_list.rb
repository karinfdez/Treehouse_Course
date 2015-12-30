require './todo_item'

class TodoList
	attr_reader :name, :todo_items
	def initialize(name)
		@name=name
		@todo_items=[]
	end

	def add_item(name)
		todo_items.push(TodoItem.new(name))
	end

	def remove_item(name)
		found=false
    #This index is the one that will let me remove the items on the array.
		index=0
		todo_items.each do |item|
	#I can use item.name because of the attr_reader on TodoItemClass
			if item.name==name
				found=true
			end
			if found
				break
			else
				index+=1
			end
		end
		if found
			todo_items.delete_at(index)
			return true
		else
			return false
		end
	end
	
	def to_s
		"List Name: #{@name}\t
		Items: #{todo_items}"
	end
end

todo_list=TodoList.new("Groceries")
todo_list.add_item("Milk")
todo_list.add_item("Juice")
puts todo_list

puts "Removing Juice from list:"

if todo_list.remove_item("Juice")
	puts "Juice were removed from list"
end
puts todo_list