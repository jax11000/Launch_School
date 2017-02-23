LETTERS = {1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'}

def integer_to_string(num)
  if num < 0
    num = num * (-1)
  end
  arr = num.digits 
  string = []
  arr.each do |digit|
    string << LETTERS[digit]
  end
  string.reverse.join
end

def integer_to_signed_string(num)
  string = integer_to_string(num)
  if num < 0 
    string.prepend('-')
  end
  string
end
puts integer_to_signed_string(123456)
puts integer_to_signed_string(-123465)