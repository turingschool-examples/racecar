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
