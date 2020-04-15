# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.

require 'matrix'

def numbers_array
  (1..1000).to_a
end

def morphed_nums_array
  numbers_array.map { |num| num.digits.join.to_i }
end

def sums
  nums = [numbers_array], [morphed_nums_array]
  nums.transpose.map(&:sum)
end

def palindrome?(number)
  number == reverse(number)
end



# puts numbers_array
# puts morphed_nums_array
# puts final_move
