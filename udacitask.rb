require_relative 'todolist.rb'

# Creates a new todo list
list = TodoList.new("Pre-Race Check List")

# Add four new items
list.add_item("Sneakers")
list.add_item("Bib")
list.add_item("Nutrition")
list.add_item("Drink") 

# Print the list
list.print_list

# Delete the first item
list.remove_item(0)
# Print the list
list.print_list
# Delete the second item
list.delete_item(1)

# Print the list
list.print_list

# Update the completion status of the first item to complete
list.items[0].toggle_status

# Print the list
list.print_list

# Update the title of the list
list.rename_title("Do or die")

# Print the list
list.print_list