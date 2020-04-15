# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.

class PalindromeMechanics

  def initialize(low, high)
    low = 1
    high = 1000
    @range = (low..high).to_a
  end

  def check_palindrome?(number)
   forward = number.to_s
   reverse = forward.split('').reverse().join('')
   forward == reverse
  end

  sum_reverse = range.reduce({}) do |result, number|
   reverse = number.to_s.reverse.to_i
   key = number.to_s
   result[key] = number + reverse
  end

  palindromes = sum_reverse.select do |number|
    checkForPalindrome?(number)
  end
end
