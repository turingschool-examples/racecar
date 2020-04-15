class Palindrome
  def initialize(number)
    @number = number
  end

  def get_range
    (1..@number).to_a
  end

  def return_palindromes
    get_range.select do |number|
      product = number + number.to_s.reverse.to_i
      product.to_s == product.to_s.reverse
    end
  end
end
