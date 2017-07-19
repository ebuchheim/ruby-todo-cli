
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
    @all_tasks.each_with_index {|task, index| puts "#{index + 1}.) #{task.to_machine}"}
    puts "\nThat's it.  Let's get crackin'!"
  end

  def write_to_file(filename)
    machinified = @all_tasks.map(&:to_machine).join("\n")
    IO.write(filename, machinified)
  end

  def read_to_file(filename)
    IO.readlines(filename).each do |line|
      status, *item = line.split(':')
      status = status.include?('X')
      add(Task.new(item.join(':').strip, status))
    end
  end

  def delete(task_number)
    @all_tasks.delete_at(task_number.to_i - 1)
  end

  def update(task_number, task)
    @all_tasks[task_number.to_i - 1] = task
  end

  def toggle(task_number)
    @all_tasks[task_number - 1].toggle_status
  end
end

class Task
  def initialize(item, status=false)
    @item = item
    @status = status
  end
  attr_reader :item
  attr_accessor :status

  def completed?
    @status
  end

  def toggle_status
    @status = !completed?
  end

  def to_machine
    "#{represent_status}:#{item}"
  end

  private

  def represent_status
    @status ? '[X]' : '[ ]'
  end

end
