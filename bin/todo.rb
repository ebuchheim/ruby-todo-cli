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
        my_list.add(Task.new(task_input))
        input = Promptable.prompt("\nWould you like to add another task? (Y/n)")
        if input.upcase == "Y" || input.upcase == "YES"
          input = "1"
        else
          input = Promptable.prompt
        end
      when "2"
        my_list.show
        input = Promptable.prompt
      when "3"
        filename_input = Promptable.prompt("\nPlease enter the name of the file you would like to write to:")
        my_list.write_to_file(filename_input)
        input = Promptable.prompt
      when "4"
        filename_input = Promptable.prompt("\nPlease enter the name of the file you would like to read from:")
        my_list.read_to_file(filename_input)
        input = Promptable.prompt
      else
        input = Promptable.prompt
    end
  end
  puts "Aw, I guess you'll go be productive now.  Bye!"

end
