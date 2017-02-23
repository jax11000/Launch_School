require 'pry'
DIGITS = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0, }

def string_to_integer(str)
  arr = str.chars
  if arr[0] == '+'
    arr.shift
  end
  number = []
  arr.each do |x|
  number << DIGITS[x]
  end
  number
end


def string_to_signed_integer(str)
  number_arr = string_to_integer(str)
  if number_arr[0] == nil
    number_arr.shift
    number = number_arr.inject{|a,i| a*10 + i}
    number = number - (number * 2) 
  else
  number = number_arr.inject{|a,i| a*10 + i}
end
number
end

puts string_to_signed_integer('+1234')
puts string_to_signed_integer('-1234')