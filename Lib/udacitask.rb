require_relative 'todolist.rb'

# Creates a new todo list
list = TodoList.new("Pre-race Check List")

# Add four new items
list.add_item("Sneakers")
list.add_item("bib")
list.add_item("Drink")
list.add_item("Nutrition")

# Print the list
#list.print_list

# Delete the first item
#list.remove_item(1)

# Print the list
#list.print_list

# Delete the second item
#list.remove_item(2)

# Print the list
#list.print_list

# Update the completion status of the first item to complete
#list.completed_item(1)

# Print the list
#list.print_list

# Update the title of the list
#list.rename_title("Post Race")

# Print the list
#list.print_list