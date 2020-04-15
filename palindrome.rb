class Palindrome

  def palindrome_nums
    Array(1..1000).select {|num| palindrome?(num)}
  end

  private

  def reverse_and_add(num)
    num + num.to_s.reverse.to_i
  end

  def palindrome?(num)
    reverse_and_add(num).to_s == reverse_and_add(num).to_s.reverse
  end

end
