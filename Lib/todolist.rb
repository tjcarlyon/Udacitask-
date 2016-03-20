class TodoList
  attr_reader :title, :items

    # creating a list w title
    def initialize(list_title)
       @title = list_title
       @items = Array.new # Starts empty! No Items yet!
    end

    # renaming list title
    def rename_title(new_title)
      @title = new_title
    end

    # adding items
    def add_item(new_item)
       item = Item.new(new_item)
       @items.push(item)
    end

    # deleting items
    def remove_item(index)
      @items.delete_at(index)
    end

    # print
    def print_list
        puts "*" * 25
        puts "#{title}"
        puts "*" * 25
        #counter to add number before each item
        i = 1
        @items.each do |item|
        puts "#{i}" + "  " + item.description + "   Completed: " + item.completed?
        i += 1
    end
      

    end
end




class Item
    # methods and stuff go here

     attr_reader :description, :completed_status

     # Initialize item with a description and marked as
     # not complete
     def initialize(item_description)
        @description = item_description
        @completed_status = false
        
     end


    #returns a boolean
     def completed? 
        #Ternary operator expressions
        return @completed_status? "yes" : "no"
     end
     

     def toggle_status
         @completed_status = @completed_status == true ? false : true
     end
    

end
   