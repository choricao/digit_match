# Returns count of digits matching in the two input non-negative integers
def digit_match(number1, number2)
  return 0 if number1.nil? || number2.nil? || number1 < 0 || number2 < 0

  count = 0
  length = number1 <= number2 ? (Math.log10(number1).to_i + 1) : (Math.log10(number2).to_i + 1)
  length.times do |i|
    count += 1 if (number1 % (10 ** (i + 1)) / (10 ** i)) == (number2 % (10 ** (i + 1)) / (10 ** i))
  end
  
  return count
end
