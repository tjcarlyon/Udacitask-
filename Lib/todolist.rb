class TodoList
  # methods and stuff go here
  attr_reader :title, :items

  ## Initialize todo list with a title and no items
  def initialize(list_title)
    @title = list_title
    @items = Array.new
  end

  ## Rename the existing title
   def rename_title(new_title)
    @title = new_title
  end

  ## Add an Item to the array of Items
  def add_item(new_item)
    item = Item.new new_item
    @items.push item
  end

  ## Remove a taks from list
  def remove_item(item_id)
    @items.delete_at item_id-1
  end

  ## Flag the task as completed
  def completed_item(item_id)
    if indexed? item_id
      @items[item_id-1].completed_item
    end
  end

  ## Remove completed flag from the task
  def uncompleted_item(item_id)
    if indexed? item_id
      @items[item_id-1].uncompleted_item
    end
  end

# Add due date to task using yy-mm-dd format
  #def add_due_date(item_id, due_date)
    #if indexed? item_id
      #@items[item_id-1].set_due_date due_date
    #end
  #end

  ## Remove due date from task
  def remove_due_date(item_id)
    if indexed? item_id
      @items[item_id-1].remove_date
    end
  end

  

  # Return the index of the task
  def get_item_index(item)
    @items.index item
  end

  ## Print the title and call the Item print method
  def print_list
    puts "*" * 25
    puts "\n"
    puts "#{@title}"
    puts "*" * 25
    @items.each do |item|
      item_index = get_item_index item
      item.print_item(item_index + 1)
    end
  end
end



class Item
  
  # methods  go here
  attr_accessor :description, :completed_status, #:due_date  

  # Initailize item with a description, and not completed 
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

  # Remove complete check for item
  def uncompleted_item
    @completed_status = false
  end

  