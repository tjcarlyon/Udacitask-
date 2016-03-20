class TodoList

	attr_reader :title, :items
     # Initialize todo list with a title and no items
     def initialize(list_title)
        @title = list_title
        @items = Array.new # Starts empty! No Items yet!
     end

    # Creates a new Item and adds it to the array of Items
     def add_item(new_item, due_date)
        item = Item.new(new_item, due_date)
        @items.push(item)
    end
    
    
    #removes item from array based on the list number shown in print_list
    def remove_item(num) 
        @items.delete_at(num-1)
    end
     

    #marks item as complete
    def complete(num) #marks item as complete
        @items[num-1].complete_item
    end

    #updates the title of the list
    def update_title(new_title) #updates the title of the list
    @title = new_title
    end

end




class Item
    # methods and stuff go here

     attr_reader :description, :completed_status, :due_date

     # Initialize item with a description and marked as
     # not complete
     def initialize(item_description, due_date)
        @description = item_description
        @completed_status = false
        @due_date = due_date
     end

     def completed? 
        @completed_status 
     end
end
