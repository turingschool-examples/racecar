# write a script in this file that finds all numbers between 1 and 1000 that
# when reversed, and added to itself, create a numeric palindrome.

range = (1..1000).to_a
numeric_palindromes = []

def sum_of_num(num)
  num.to_s.to_i + num.to_s.reverse.to_i
end

range.each do | num |
  numeric_palindromes << num if sum_of_num(num) == sum_of_num(num).to_s.reverse.to_i
end

p numeric_palindromes
