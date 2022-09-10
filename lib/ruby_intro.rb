# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  result = 0
  arr.each do |i|
    result += i
  end
  return result
end

def max_2_sum(arr)
  # YOUR CODE HERE
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
  # YOUR CODE HERE
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
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
