def word_sizes(string)
  counts = Hash.new(0)
  string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end
puts word_sizes('the fox jumped')