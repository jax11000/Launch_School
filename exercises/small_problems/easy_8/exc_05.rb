def substring(string)
  subs = []
  1.upto(string.length) do |letter|
    subs << string.slice(0, letter)
  end
  subs
end

def substrings(string)
  substrings_arr = []
  while string.length > 0 do 
    substrings_arr << substring(string)
    string.delete!(string[0])
  end
  substrings_arr.flatten.sort_by(&:length)
end

def palindrome(string)
  all_subs = substrings(string)
  palindromes = []
  all_subs.each do |word|
    if word == word.reverse && word.size > 1
      palindromes << word
    end
  end
  palindromes
end
puts palindrome('hello-madam-did-madam-goodbye')