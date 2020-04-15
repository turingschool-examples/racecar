# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.
def check_reverse(number)
  if number == reverse(number)
    true
  else
    false
  end
end

def reverse(number)
  number.to_s.reverse.to_i
end

def palindrome(number)
  sum = number + reverse(number)
  check_reverse(sum)
end

holder = []

1.upto(1000) do |number|
  if palindrome(number)
    holder << number
  end
end

puts holder
