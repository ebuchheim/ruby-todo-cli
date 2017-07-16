#!/usr/local/bin/ruby -w
#This is where I'm keeping my ACTIONS!
require_relative "../lib/classes.rb"
require_relative "../lib/modules.rb"

if __FILE__ == $PROGRAM_NAME
  #my_list = List.new

  #my_first_task = Task.new("Snuggles with Tyler!")
  #my_list.add(my_first_task)
  #my_second_task = Task.new ("Snuggles with puppies!")
  #my_list.add(my_second_task)
  #my_list.show
  include Menu
end

Menu.show
