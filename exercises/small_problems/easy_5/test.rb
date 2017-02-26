word = 'dogs'
def swap(a, b)
  a , b = b, a
end
puts swap(word[0], word[-1])