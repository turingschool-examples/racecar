# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.
def reverse_and_add(num)
  num + num.to_s.reverse.to_i
end

def palindrome?(num)
  sum = reverse_and_add(num)
  forward = sum.to_s
  backward = sum.to_s.reverse
  forward == backward
end

range = Array (1..1000)

puts range.select {|num| palindrome?(num)}
