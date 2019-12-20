require_relative "Grocery.rb"
require_relative "Produce.rb"

class Main

  def initialize
    puts
    @stock = []
    prompt()
  end

  def prompt
    puts
    puts "What kind of item are you adding?"
    puts "1) Produce"
    puts "2) Grocery"
    puts "3) Item Lookup"
    print "Choice: "
    case gets.chomp
    when "1"
      @stock.append(Produce.new())
    when "2"
      @stock.append(Grocery.new())
    when "3"
      lookup()
    else
      puts "That's not an option you fucking impotent bastard"
    end
    prompt()
  end

  def lookup
    print "What is the name of the item you are looking for? \n"
    print "Item Name: "
    itemName = gets.chomp
    itemFound = 0
    @stock.each do |i|
      if i.nameReturn.upcase == itemName.upcase
        itemFound = 1
        puts "There are currently #{i.countReturn} of #{i.nameReturn}'s in stock."
      end

      if itemFound == 0
        puts "Sorry, No items matching that name were found."
      end
    end
  end


end

Main.new()
