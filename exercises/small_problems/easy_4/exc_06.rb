require 'pry'
DIGITS = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0}


def string_to_integer(str)
  arr = str.chars
  number = []
  arr.each do |x|
  number << DIGITS[x]
  end
  number.inject{|a,i| a*10 + i}
end

puts  string_to_integer('+12345')