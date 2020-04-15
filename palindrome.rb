# write a script in this file that finds all numbers between 1 and 1000 that
# when reversed, and added to itself, create a numeric palindrome.

range = (1..1000).to_a

def sum_of_num(num)
  num.to_s.to_i + num.to_s.reverse.to_i
end

def numeric_palindrome?(num)
  sum_of_num(num) == sum_of_num(num).to_s.reverse.to_i
end

def find_numeric_palindromes(range)
  range.map { | num | num if numeric_palindrome?(num) }.compact
end

p find_numeric_palindromes(range)
