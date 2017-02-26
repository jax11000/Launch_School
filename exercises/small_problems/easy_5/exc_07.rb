require 'pry'
def word_sizes(string)
  counts = Hash.new(0)
  string.split.each do |word|
    new_word = word.delete('^A-Za-z')
    counts[new_word.size] += 1
  end
  counts
end
puts word_sizes("What's up doc?")
