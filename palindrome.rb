# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.
class Palindrome
  
  attr_reader :numbers
  
  def initialize(numbers)
    @numbers = numbers
    @output = []
  end
  
  def palindrome?
    numbers.each do |number|
      reverse_number = number.to_s.reverse
      output = number + reverse_number.to_i
      if output.to_s == output.to_s.reverse
        @output << number
      end 
    end
    @output
  end
end

numbers = [*1..1000]
output = Palindrome.new(numbers)
final_output = output.palindrome?
p final_output