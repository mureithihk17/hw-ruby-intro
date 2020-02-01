# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  # YOUR CODE HERE
  elementSum = 0
	array.each {|element| elementSum+= element}
	return elementSum
end

def max_2_sum(array)
  # YOUR CODE HERE
  return sum(array.sort.last(2))
end

def sum_to_n?(array, n)
  # YOUR CODE HERE
  return array.combination(2).any? { |elementA, elementB| elementA + elementB == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  return /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  return true if s == "0"  
    s =~ /^[01]+00$/ 
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn
	attr_accessor :price
	
	def price
	  @price
	end
  def price=(price)
    @price = price
  end
  
  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end
	
	def initialize(isbn, price)
	  raise ArgumentError if isbn.empty? or isbn == nil or price <= 0
	  @isbn = isbn
	  @price = price
	end

  def price_as_string
    "$%.2f" % @price
  end
end
