# write a script in this file that finds all numbers between 1 and 1000 
# that when reversed, and added to itself, create a numeric palindrome.

array = (1..1000).to_a
palindromes = []
array.each do |number|
  if number.to_s == number.to_s.reverse
    palindromes << number.to_i
  end
end

p palindromes
