#============================As Plain Ruby======================================

one_to_a_thousand = (1..1000).to_a

all_numbers_added = []

one_to_a_thousand.each do |base_num|
  one_to_a_thousand.each do |num_to_be_added|
    all_numbers_added << (base_num + num_to_be_added)
  end
end

palindrome = all_numbers_added.find_all do |added_num|
  added_num.to_s == added_num.to_s.reverse
end

p palindrome

#=============================As a Class========================================

class Palindrome
  def initialize(number_range)
    @palindrome_numbers = number_range.to_a
  end

  def summed_numbers
    all_numbers_added = []

    @palindrome_numbers.each do |base_num|
      @palindrome_numbers.each do |num_to_be_added|
        all_numbers_added << (base_num + num_to_be_added)
      end
    end
    all_numbers_added
  end

  def find_palindromes
    summed_numbers.find_all do |added_num|
      added_num.to_s == added_num.to_s.reverse
    end
  end

end

one_to_a_thousand = Palindrome.new(1..1000)

p one_to_a_thousand.find_palindromes
