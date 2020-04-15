require 'pry'

def plalindrome?(text)
  text == text.reverse
end

def reverse_i(number)
  reverse = 0
  while number > 0
    reverse = (reverse * 10) + (number % 10)
    number = number / 10
  end
  reverse
end

p (1..1000).select {|num| plalindrome?((num + reverse_i(num)).to_s)}



