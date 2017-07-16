#!/usr/local/bin/ruby -w
#This is where I'm keeping my ACTIONS!
require_relative "../lib/classes.rb"
require_relative "../lib/modules.rb"

if __FILE__ == $PROGRAM_NAME
  include Menu
  include Promptable

  my_list = List.new
  Menu.show
  input = Promptable.prompt
  until input == "q"
    case input
      when "1"
        task_input = Promptable.prompt("What would you like to add?")
        Task.new(task_input)
        my_list.add(Task.new(task_input))
        input = Promptable.prompt
      when "2"
        my_list.show
        input = Promptable.prompt
      else
        input = Promptable.prompt
    end
  end
  puts "Aw, I guess you'll go be productive now.  Bye!"

end
