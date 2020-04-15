class Integer
  def reverse
    number = self
    reversed = 0
    reversed, number = (reversed * 10 + number % 10), number / 10 until number == 0
    reversed
  end
end
