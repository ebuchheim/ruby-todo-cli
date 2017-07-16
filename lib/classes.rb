#This is where I'm keeping my CLASSES!
class List
  def initialize
    @all_tasks = ["Hi, I'm your task master!  Here are your tasks:"]
  end
  attr_reader :all_tasks

  def add(task)
     @all_tasks << task
  end
end

class Task
  def initialize(item)
    @item = item
  end
  attr_reader :item
end
