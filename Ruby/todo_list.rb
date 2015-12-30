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

	def get_index(name)
		index=0
		todo_items.each do |item|
			if item.name==name
				break
			else
				index+=1
			end
	  end
	  return index
	end

	def mark_complete(name)
		
		if index=get_index(name)
			todo_items[index].mark_complete!
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
todo_list.add_item("Tomatoes")
puts todo_list

puts "Removing Juice from list:"

if todo_list.remove_item("Juice")
	puts "Juice were removed from list"
end

if todo_list.mark_complete("Milk")
	puts "Milk was mark as complete"
end
puts todo_list