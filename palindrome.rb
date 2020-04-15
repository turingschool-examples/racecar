require_relative "palindrome_calculator.rb"

#could create a CLI to ask what the user wants the range to be...

calculator = PalindromeCalculator.new(1..1000)
calculator.display_palindromes
