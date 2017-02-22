def digit_list(num) # my answer
  digit = num.to_s.split('')
  digit.map! do |num|
    num.to_i
  end
end
puts digit_list(1234) == [1, 2, 3, 4]

=begin launch answer
def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end
