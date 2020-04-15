class Palindrome

  def palindrome_nums
    Array(1..1000).select {|num| palindrome?(num)}
  end

  private

  def reverse_and_add(num)
    num + num.to_s.reverse.to_i
  end

  def palindrome?(num)
    sum = reverse_and_add(num)
    forward = sum.to_s
    backward = sum.to_s.reverse
    forward == backward
  end

end

palindromes = Palindrome.new

puts palindromes.palindrome_nums
