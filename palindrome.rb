# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.

starting_numbers = (1..1000)

starting_numbers.each do |number|
  combined_number = number + number.to_s.reverse.to_i
  puts number if combined_number.to_s == combined_number.to_s.reverse
end
