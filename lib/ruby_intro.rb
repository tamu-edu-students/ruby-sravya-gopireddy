# frozen_string_literal: true

# Part 1

def sum(arr)
  result = 0
  arr.each do |i|
    result += i
  end
  return result
end

def max_2_sum(arr)
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr.at(0)
  else
    #Initialize to arr min value. Iterate over array to find the largest and second largest
    first_largest = arr.min
    second_largest = arr.min
    arr.each do |i|
      if i >= first_largest
        second_largest = first_largest
        first_largest = i
      elsif i >= second_largest
        second_largest = i
      end 
    end
    return first_largest + second_largest
  end
end

def sum_to_n?(arr, number)
  # Sort the input array. Use 2 pointers approach to find elements that sum upto n
  arr = arr.sort 
  left = 0
  right = arr.size - 1 
  while left < right
    sum = arr[left] + arr[right]
    if sum < number
      left += 1
    elsif sum > number
      right += -1
    else
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + String.new(name)
end

def starts_with_consonant?(string)
=begin
  Regex expression to check
  \A : To match the first letter of string 
  [A-Z&&[^AEIOU]] : To match with any consonant(letters other than a,e,i,o,u)
  /<expression>/i : To ignore lettercase
=end
  return /\A[A-Z&&[^AEIOU]]/i.match?(string)
end

def binary_multiple_of_4?(string)
# Regex expression to check all letters in string are 0/1
  if (/[^0-1]/.match?(string)) || string.size == 0
    return false 
  end
=begin
  Regex expression to check if divisible by 4(i.e last 2 letters are 00)
  \A : Starting of String
  (.) : Match any 
  * : Match 0 or more times
  00 : Match 2 consecutive zeros 
  \z : End of string
=end
  return  /\A(.)*00\z/.match?(string) || string == "0"
end

# Part 3

# Object representing a book
class BookInStock
  def initialize(isbn, price)
    raise ArgumentError.new("ISBN cannot be empty for a book") if isbn.empty?
    raise ArgumentError.new("Price of book cannot be negative or 0") if price <=0
    @isbn = isbn
    @price = price
  end

  # Getter for isbn
  def isbn
    @isbn
  end

  # Setter for isbn
  def isbn=(isbn)
    raise ArgumentError.new("ISBN cannot be empty for a book") if isbn.empty?
    @isbn = isbn
  end

  # Getter for price
  def price
    @price
  end

  # Setter for price
  def price=(price)
    raise ArgumentError.new("Price of book cannot be negative or 0") if price <=0
    @price = price
  end

  # Formatting price to 2 decimal points using 0.2f
  def price_as_string
    return "$%0.2f" %@price
  end
end
