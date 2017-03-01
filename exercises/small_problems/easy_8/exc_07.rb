require 'pry'
def double(string)
  string = string.chars
  new_string = string
  new_string.zip(string).join
end

puts double("string string")