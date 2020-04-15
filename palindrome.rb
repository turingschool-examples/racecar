# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.
require './integer'

number = 1
palidromes = []
while number <= 1000
  reverse_number = number.to_s.reverse.to_i
  # Found a mathematical way to reverse a number that seemed interesting 'number.reverse'
  product = (number + reverse_number)
  palidromes << number if (number + reverse_number).to_s == product.to_s.reverse
  number += 1
end
p palidromes
