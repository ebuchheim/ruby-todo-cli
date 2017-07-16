#!/usr/local/bin/ruby -w
#This is where I'm keeping my ACTIONS!
require_relative "../lib/classes.rb"

if __FILE__ == $PROGRAM_NAME
  my_list = List.new
  puts "You have created a new list!"
  my_first_task = Task.new("Snuggles with Tyler!")
  puts my_first_task.item
end
