# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.
range = Range.new(1,1000).to_a
palindromes = []

range.each do |num|
  inverted = num.to_s.reverse.to_i
   sum = num + inverted
   match = sum == sum.to_s.reverse.to_i

 if match
     palindromes << num
   end
end

print palindromes
