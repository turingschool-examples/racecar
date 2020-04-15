def palindrome
  count = 0
  palindrome = []
  x = rand(100)
  num = x + (((x.to_s).split("").reverse).join).to_i
  array = (num.to_s).split("")
  if array[0] == array[-1]
    palindrome << num
  end
  count = count + 1
end
