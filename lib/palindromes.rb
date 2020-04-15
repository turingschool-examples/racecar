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
