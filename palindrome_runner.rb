require './palindrome'

puts "Welcome to the Palindrome-inator!"
puts "Enter a number and the Palindrome-inator will determine which numbers between 1 and it, are palindromes (when added to it's reciprocal)!"

input = gets.chomp
while input.downcase != 'q' || input.downcase == 'quit'
  if input.to_i < 0
    puts "Sorry there are no palidromes for negative numbers; enter a new number, or 'Q' to quit."
    input = gets.chomp
  elsif input.to_i == 0
    puts "0 is a palindrome of itself; enter a new number, or 'Q' to quit."
  else
    palindrome = Palindrome.new(input.to_i)
    p palindrome.return_palindromes
    puts "Would you like to try a different number? Type 'Q' to quit."
    input = gets.chomp
  end
end
puts "Good Bye!"
