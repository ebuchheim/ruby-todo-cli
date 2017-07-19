module Menu

  def menu
    puts "Welcome to your To Do List!
    \nThis shortcut menu will help you use the system:
    \n1 = Add an item to the list
    \n2 = Show the full list
    \n3 = Update an existing list item
    \n4 = Delete am item from the list
    \n5 = Write to a text file
    \n6 = Read from a text file
    \n7 = Set completion status
    \nh = Help!  Show me the commands!
    \nq = Quit"
  end

  def show
    menu
  end

end

module Promptable
  def prompt (message="What would you like to do?", symbol=":>")
    puts message
    print symbol
    gets.chomp
  end

  def to_s
    @item
  end
end
