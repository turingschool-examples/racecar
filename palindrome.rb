# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.
def palindrome?(num)
  reverse_num = num.to_s.reverse.to_i
  added_num = (num + reverse_num).to_s
  return false if added_num.length == 1
  if added_num.length == 2 || added_num.length == 3
    added_num[0] == added_num[-1] ? true : false
  elsif added_num.length == 4
    added_num[0] == added_num[-1] && added_num[1] == added_num[2] ? true : false
  end
end

def return_palindromes
  (1..1000).find_all do |num|
    palindrome?(num)
  end
end

p return_palindromes

# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.
# def palindrome?(num)
#   reverse_num = num.to_s.reverse.to_i
#   added_num_array = (num + reverse_num).digits.reverse
#   added_num_set = added_num_array.each_slice(2).to_a
#   return false if added_num_set.length == 1
#   if added_num_set[0].length.odd? && added_num_set[0].length >= 3
#     return true if added_num_set[0][0...-1] == added_num_set[1].reverse
#     false
#   else
#     return true if added_num_set[0][0..-1] == added_num_set[1].reverse
#     false
#   end
# end
#
# def return_palindromes
#   (1..1000).find_all do |number|
#     palindrome?(number)
#   end
# end
#
# p return_palindromes
