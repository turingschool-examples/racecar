class PalindromeCalculator

  attr_reader :range, :palindrome
  def initialize(range)
    @range = range
    @palindromes = []
  end

  def reverse(number)
    number.to_s.reverse.to_i
  end

  def palindrome?(number)
    number == reverse(number)
  end

  def calculate(number)
    number + reverse(number)
  end

  def find_palindromes
    range.each do |number|
      if palindrome?(calculate(number))
        @palindromes << number
      end
    end
  end

  def eliminate_duplicates
    @palindromes = @palindromes.uniq
  end

  def display_palindromes
    find_palindromes
    eliminate_duplicates
    puts @palindromes.sort
  end

end
