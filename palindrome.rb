# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.

nums = (1..1000).to_a
palindromes = []

nums.each do |num|
  sum_str = (num + num.to_s.reverse.to_i).to_s
  palindrome = []
  sum_str.each_char.with_index do |char, i|
    palindrome << false unless char == sum_str[-(i+1)]
  end
  palindromes << num if palindrome.all?
end

p palindromes
