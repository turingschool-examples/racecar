# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.

### Thought process:
        # @string = "ana"
        #
        # def palindrome?(@string)
        #   if @string == @string.reverse
        #     return true
        #   else
        #     puts "#{string} is not a palindrome"
        #   end
        # end

        # num = "88"
        #
        # def palindrome(num)
        #   if num = num.reverse
        #     p num
        #   else
        #     p "#{num} is not a palindrome"
        #   end
        # end


### Process:
# make a range of numbers and turn to an array
number_range = (1..1000).to_a

# add each number to itself and turn to a string
each_doubled = number_range.map do |number|
  (number + number).to_s
end

# iterate over each number to see if they are a palindrome
all_palindromes = each_doubled.find_all do |string|
  string == string.reverse
end

p "There are #{all_palindromes.count} numeric palindromes in the following collection:"
p all_palindromes
