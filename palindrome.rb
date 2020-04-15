# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.

x = Range.new(1,1000).to_a

@palindromes = []
x.each do |number|
  reverse = number.to_s.reverse
  end_number = (number + reverse.to_i)
  if end_number.to_s == end_number.to_s.reverse
    @palindromes << number
  end
end

p @palindromes                  
