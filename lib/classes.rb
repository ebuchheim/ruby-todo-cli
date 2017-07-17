
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
    puts "\nHere are your tasks:"
    @all_tasks.each_with_index {|task, index| puts "#{index + 1}.) #{task.item}"}
    puts "\nThat's it.  Let's get crackin'!"
  end

  def write_to_file(filename)
    IO.write(filename, @all_tasks.map(&:to_s).join("\n"))
  end

  def read_to_file(filename)
    IO.readlines(filename).each do |line|
      add(Task.new(line.chomp))
    end
  end

  def delete(task_number)
    @all_tasks.delete_at(task_number.to_i - 1)
  end
end

class Task
  def initialize(item)
    @item = item
  end
  attr_reader :item
end
