#This is where I'm keeping my CLASSES!
class List
  def initialize
    @all_tasks = []
    puts "You have created a new list!"
  end
  attr_reader :all_tasks

  def add(task)
     @all_tasks << task
     puts "\nYou have added: #{task.item}"
  end

  def show
    puts "\nHi, I'm your task master!  Here are your tasks:"
    @all_tasks.each {|task| puts task.item}
  end
end

class Task
  def initialize(item)
    @item = item
  end
  attr_reader :item
end
