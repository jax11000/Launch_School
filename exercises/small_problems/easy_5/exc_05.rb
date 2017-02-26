ALPHABET = ['a', 'b', 'c', 'd', 'e', 'f'. 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
STRING = "--what's my +*& line?"
def cleanup(string)
  string.gsub(/[^a-zA-Z0-9\s]/, ' ').squeeze(' ')
end
puts cleanup(STRING)
