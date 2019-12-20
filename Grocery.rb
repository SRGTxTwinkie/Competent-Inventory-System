require "securerandom"
class Grocery
  attr_reader :itemID

  def initialize()
    puts
    puts "hello"
    @itemName = name()
    @itemPrice = price()
    @itemCount = itemCount()
    @itemID = SecureRandom.uuid()
  end

  def name
    puts
    print "What is the name of the item?: "
    itemName = gets.chomp
    @itemName = itemName
  end

  def price
    puts
    print "What is the price of the item?: "
    itemPrice = gets.chomp
    @itemPrice = itemPrice
  end

  def itemCount()
    print "How many items are there?: "
    itemCount = gets.chomp
    @itemCount = itemCount
  end

  def nameReturn
    return @itemName
  end

  def priceReturn
    return @itemPrice
  end

  def itemIDReturn
    return @itemID
  end

  def countReturn
    return @itemCount
  end

end
