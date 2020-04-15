# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.
require "pry"

# class NumericPalindromeFinder
#
# end
#
# NumericPalindromeFinder.new

class Palindromes
  def self.numeric_palindromes(range)
    range.reduce([]) do |palindromes, index|
      big_number_string = (index + self.reverse_number(index)).to_s

      if self.is_palindrome?(big_number_string)
        palindromes << index
      end
      palindromes
    end
  end

  def self.is_palindrome?(string)
    if string.length <= 1
      return true
    else
      string[0] == string[-1] && self.is_palindrome?(string.slice(1..-2))
    end
  end

  def self.is_palindrome_sans_recursion?(string)
    string == string.reverse
  end

  private

  def self.reverse_number(number)
    original_string = number.to_s
    reversed_number = original_string.reverse.to_i
  end
end


p Palindromes.numeric_palindromes(1..1000)
puts "\n"


# the race is on!
times1 = (0..10_000_000).reduce([]) do |times|
  starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  Palindromes.is_palindrome_sans_recursion?("racecar")
  ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  elapsed = ending - starting
  times << elapsed
end
puts "average time for mine: #{avg1 = times1.sum(0.0) / times1.length}"

times2 = (0..10_000_000).reduce([]) do |times|
  starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  Palindromes.is_palindrome_sans_recursion?("racecar")
  ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  elapsed = ending - starting
  times << elapsed
end
puts "average time for sans recursion: #{avg2 = times2.sum(0.0) / times2.length}"

# NOTE: the times for both the recursive and the .reverse methods
# are compareable. From my testing, it seems like the .reverse method
# has shorter minimum times, but occasionally spikes into running very slow
# (or relatively slower, we're talking fractions of a fraction of a millisecond)


if avg1 < avg2
  puts "HA! mine's better"
else
  puts "Damn, alright you win :("
end
