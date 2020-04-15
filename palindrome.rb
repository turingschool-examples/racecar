def find_palindromes
  range = (1..1000).to_a
  range.map do |value|
    if reverse_and_add(value) == reverse_and_add(value).reverse
      value
    end
  end.compact
end

def reverse_and_add(value)
  (value + reverse_integer(value)).to_s
end

def reverse_integer(value)
  value.to_s.reverse.to_i
end

p find_palindromes