#!/usr/local/bin/ruby -w
#This is where I'm keeping my ACTIONS!
require_relative "../lib/classes.rb"
require_relative "../lib/modules.rb"

if __FILE__ == $PROGRAM_NAME
  include Menu
  include Promptable

  my_list = List.new
  show
  input = prompt
  until input == "q"
    case input
      when "1"
        task_input = prompt("What would you like to add?")
        my_list.add(Task.new(task_input))
        input = prompt("\nWould you like to add another task? (Y/n)")
        if input.upcase == "Y" || input.upcase == "YES"
          input = "1"
        else
          input = prompt
        end
      when "2"
        my_list.show
        input = prompt
      when "3"
        my_list.show
        task_number = prompt("Which task would you like to update?  Enter the task number.")
        task = Task.new(prompt("What should the updated task say?"))
        my_list.update(task_number, task)
        input = prompt("\nWould you like to update another task? (Y/n)")
        if input.upcase == "Y" || input.upcase == "YES"
          input = "3"
        else
          input = prompt
        end
      when "4"
        my_list.show
        task_number = prompt("What task would you like to delete?  Enter the task number.")
        my_list.delete(task_number)
        my_list.show
        input = prompt("\nWould you like to delete another task? (Y/n)")
        if input.upcase == "Y" || input.upcase == "YES"
          input = "4"
        else
          input = prompt
        end
      when "5"
        filename_input = prompt("\nPlease enter the name of the file you would like to write to:")
        my_list.write_to_file(filename_input)
        input = prompt
      when "6"
        filename_input = prompt("\nPlease enter the name of the file you would like to read from:")
        my_list.read_to_file(filename_input)
        input = prompt
      when "7"
        puts my_list.show
        my_list.toggle(prompt("Which task number would you like to set to completed status?").to_i)
        my_list.show
        input = prompt("\nWould you like to change the status of another task? (Y/n)")
        if input.upcase == "Y" || input.upcase == "YES"
          input = "7"
        else
          input = prompt
        end
      when "h"
        show
        input = prompt
      else
        puts "Sorry, I don't recognize that input..."
        input = prompt
    end
  end
  puts "Aw, I guess you'll go be productive now.  Bye!"

end
