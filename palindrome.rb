# write a script in this file that finds all numbers between 1 and 1000 that when reversed, and added to itself, create a numeric palindrome.

  def numbers
    (1..100).to_a
  end

#   def palindrome?
#     num = gets.to_i
#
# def palindrome(num)
#     rev = 0
#     r = num
#     while r != 0
#         i = r%10
#         rev = rev*10 + i
#         r /= 10
#     end
#
# end
#   end


  # def altered_numbers
  #   new_arr = numbers.inject([]) { |a,u| a += numbers.map { |y| u*y } }
  # end

  # puts altered_numbers
