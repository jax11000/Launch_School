require 'pry'
def middle(string)
  result = ''
  string = string.chars
  if string.length % 2 != 0
    result << string[(string.length / 2)]
  else
    result << string[(string.length / 2) - 1] + string[(string.length / 2)]
  end
  result
end
puts middle("Launch")