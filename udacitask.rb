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

# Print the list

# Delete the second item

# Print the list

# Update the completion status of the first item to complete

# Print the list

# Update the title of the list
list.update_title("Do or die")

# Print the list