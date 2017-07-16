module Menu

  def menu
    puts "Welcome to your To Do List!
    \nThis shortcut menu will help you use the system:
    \n1 = Add
    \n2 = Show
    \n3 = Write to a text file
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
