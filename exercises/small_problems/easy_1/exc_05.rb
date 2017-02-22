def reverse_sentence(string) # my answer
  string.split(' ').reverse.join(' ')
end
puts reverse_sentence('reverse these words') == 'words these reverse'

=begin launch answer
def reverse_sentence(string)
  string.split.reverse.join(' ')
end
