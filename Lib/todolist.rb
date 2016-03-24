 class TodoList
  # methods and stuff go here
  attr_reader :title, :items

  ## Initialize todo list with a title and no items
  def initialize(list_title, user_name, time_created = Time.now.asctime)
    @title = list_title
    @items = Array.new
    @user_name = user_name
    @time_created = time_created
  end

  # Rename the existing title
   def rename_title(new_title)
    @title = new_title
  end

# Add an Item to the array of Items
  def add_item(new_item)
    item = Item.new new_item
    @items.push item
  end


  #name a new item and item num
  def rename_item(item, description)
    @items[item].description = description
  end


# Remove a taks from list
  def remove_item(item_id)
    @items.delete_at item_id-1
  end

  #mark the task as completed
  def completed_item(item_id)
    if indexed? item_id
      @items[item_id-1].completed_item
    end
  end

  # Remove completed flag from the task
  def uncompleted_item(item_id)
    if indexed? item_id
      @items[item_id-1].uncompleted_item
    end
  end



  # Check to see if task id provided by user is in the range of the items array
  def indexed?(item_id)
    size_of_index = @items.length
    if item_id > size_of_index || item_id < 1
      return false
    else
      return true
    end
  end

  # Return the index of the task
  def get_item_index(item)
    @items.index item
  end

  
  # Print the title and call the Item print method
  def print_list
    puts "*" * 25
    puts "\n"
    puts "#{@title}"
    puts "#{@time_created}"
    puts "*" * 25
    @items.each do |item|
      item_index = get_item_index item
      item.print_item(item_index + 1)
    end
  end
end



class Item
  
  # methods  go here  
  attr_accessor :description, :completed_status

  # Initailize item with a description and not completed 
  def initialize(item_description)
    @description = item_description
    @completed_status = false
    
    
   end

  # Check to see if item is marked as completed
  def item_completed?
    @completed_status
  end

  # mark item as complete
  def completed_item
    @completed_status = true
  end

  # Remove complete mark for item
  def uncompleted_item
    @completed_status = false
  end



  # Print method for item, using cboxes to show complete
  def print_item(index)
    check_box = item_completed? ? "[x]" : "[ ]"
    output_string = "#{check_box} #{index} - #{@description}"
    
    puts output_string
  end

 end

