# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.
require 'pry'

# number = 10
# number = 12
palindrome = []
number = 1

# until number == 10 do
1000.times do
  # string = number.to_s
  # number_to_string = number.to_s
  number_reverse = number.to_s.reverse.to_i
  checkit = number + number_reverse
  # split = checkit.to_s.split("")
  checkit_reverse = checkit.to_s.reverse.to_i

  if checkit == checkit_reverse
    palindrome << number
  end
    number += 1
end

# binding.pry
p palindrome

# range 1..1000

# a = 50 break into array 5,0
# b = reverse array 0,5

# total = a.into_integer(ai) + b.into_integer(bi)

# total_to_array ai, bi

# check  ai == bi

# if yes
#   convert back to integer
#   pali << converted
# else
#   next number
# end