# This is a **simulation** of an abstract class provided at user request.
class Book
    attr_accessor :title
  attr_accessor :author

  def initialize(title, author)
    raise 'You cannot instantiate an abstract class.'
  end

  def display
    raise 'You must override this method in your implementing class.'
  end
end

class MyBook < Book
  attr_accessor :price

  # my code start
  # Ruby does not have the concept of an abstract class, so the way around this
  # design is to raise errors in a base class when a method needs to be implemented.
  def initialize(title, author, price)
    @title = title
    @author = author
    @price = price
  end

  def display
    puts "Title: #{@title}"
    puts "Author: #{@author}"
    puts "Price: #{@price}"
  end
  # my code end
end

title = gets
author = gets
price = gets

new_novel = MyBook.new(title, author, price)
new_novel.display
