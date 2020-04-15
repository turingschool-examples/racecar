# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.
require 'matrix'

def numbers_array
  (1..1000).to_a
end

def morphed_nums_array
  numbers_array.map { |num| num.digits.join.to_i }
end

def numbers_to_check
  nums = [numbers_array], [morphed_nums_array]
  nums.transpose.map(&:sum)
end

def palindrome?(number)
  final = []
  numbers_to_check.each do |num|
    if num == reverse(num)
      final << num
    end
  end
end

# puts numbers_array
# puts morphed_nums_array
# puts final_move
