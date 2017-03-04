def word_lengths(string)
  word_hash = Hash.new(0)
  string_arr = string.split
  string_arr.each do |word|
    word_hash[word] = word.length
  end
  word_hash.to_a.uniq
end

puts word_lengths("there are three baboons")