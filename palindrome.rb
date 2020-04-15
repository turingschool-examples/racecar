# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.


class PalindromeScript
  def add_numbers(num)
    num + reverse_number(num)
  end

  def reverse_number(num)
    num.to_s.reverse.to_i
  end

  def add_numbers_to_their_reverse(num_range)
    num_range.map do |num|
      add_numbers(num)
    end
  end
  
  def palindrome?(num)
    num.to_s == num.to_s.reverse
  end

  def display_all_palindromes(num_range)
    num_range.reduce([]) do |acc, num|
      add_num = add_numbers(num)
      acc << num if palindrome?(add_num)
      acc
    end
  end
end

class PalindromeWelcome
  def greet
    puts 'Welcome'
    sleep(2)
    puts "I see you're interested in palindromes"
    sleep(2)
    puts "A palindrome is a the same forwards and backwards like racecar"
    sleep(2)
    puts "When you add numbers to their reverse you will create palindromes"
    sleep(2)
    puts "Here are all the palindromes I know between numbers from 1 - 1000"
    sleep(4)
  end
end

palindrome_welcome = PalindromeWelcome.new
range =  (1..1000)
palindrome_runner = PalindromeScript.new

palindrome_welcome.greet
p palindrome_runner.display_all_palindromes(range)
