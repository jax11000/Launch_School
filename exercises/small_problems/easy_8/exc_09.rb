require 'pry'
def reversed_num(number)
  string = number.to_s
  string = string.chars
  while string.last == '0'
    string.pop
  end
  string.join.reverse!
end

puts reversed_num(1234500)