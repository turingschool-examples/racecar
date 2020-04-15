# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.
def palindrome?(num)
  reverse_num = num.to_s.reverse.to_i
  added_num = (num + reverse_num).to_s
  return true if added_num == added_num.reverse
  false
end

def return_palindromes
  (1..1000).find_all do |num|
    palindrome?(num)
  end
end

p return_palindromes
