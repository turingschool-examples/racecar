# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.
require "pry"

# class NumericPalindromeFinder
#
# end
#
# NumericPalindromeFinder.new

class Palindromes
  def self.numeric_palindromes(range)
    range.reduce([]) do |palindromes, index|

      original_string = index.to_s
      reversed_original_string = original_string.reverse

      reversed_number = reversed_original_string.to_i
      big_number = index + reversed_number

      big_number_string = big_number.to_s
      reversed_big_number_string = big_number_string.reverse

      if reversed_big_number_string == big_number_string
        palindromes << index
      end

      palindromes
    end
  end
end


p Palindromes.numeric_palindromes(1..1000)
