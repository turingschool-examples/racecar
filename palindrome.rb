# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.

def palindromable(num)
  a = num.digits.reverse!
  b = num.digits
  c = a.join.to_i + b.join.to_i
  c.digits == c.digits.reverse
end

print (1..1000).to_a.find_all { |i| palindromable(i) }
