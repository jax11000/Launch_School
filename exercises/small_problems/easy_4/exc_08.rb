require 'pry'
LETTERS = {1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'}

def integer_to_string(num)
  arr = num.digits 
  string = []
  arr.each do |digit|
    string << LETTERS[digit]
  end
  string.reverse.join
end

puts integer_to_string(123456)