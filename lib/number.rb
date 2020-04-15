class Number
  attr_reader :numbers

  def initialize
    @numbers = (1 .. 1000).to_a
  end

  def find_palindrome_values
    reversed_numbers = []

    @numbers.each do |number|
      reversed_numbers << number.to_s.reverse.to_i
    end

    zipped = @numbers.zip(reversed_numbers)
    numbers_with_reverse = Hash[zipped]

    palindrome_value = []
    numbers_with_reverse.each do |number, reverse|
      palindrome_value << (number + reverse).to_s
    end

    zipped_palindrome = @numbers.zip(palindrome_value)
    @numbers_with_palindrome_values = Hash[zipped_palindrome]
    
    @numbers_with_palindrome_values
  end


  def find_palindromes
    palindromes = []
    @numbers_with_palindrome_values.each do |number, value|
      if value == value.reverse
        palindromes << number
      end
    end
    palindromes
  end

end
