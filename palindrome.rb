# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.
def check_reverse(number)
  if number == number.to_s.reverse.to_i
    true
  else
    false
  end
end

puts check_reverse(55)
puts check_reverse(121)
puts check_reverse(515)
puts check_reverse(12)
puts check_reverse(36)
