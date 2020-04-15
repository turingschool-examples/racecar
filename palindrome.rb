# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.
counter = 1
output = []
while counter <= 1000 do
  doubled = counter + counter.to_s.reverse.to_i
  if doubled.to_s == doubled.to_s.reverse
    output << counter
  end
  counter += 1
end
puts output
