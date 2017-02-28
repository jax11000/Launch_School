def word_cap(string)
  string.split.map { |x| x.capitalize }.join(' ')
end
puts word_cap('four score and seven')