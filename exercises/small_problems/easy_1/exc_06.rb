
# my answer
def reverse_words(string)
  words = []
  string.split.each do |word|
    if word.size >= 5
      words << word.reverse!
    end
  end
end
puts reverse_words('walk around the block')

=begin launch answer

def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

=end
