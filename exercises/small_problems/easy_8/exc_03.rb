def substrings(string)
  subs = []
  1.upto(string.length) do |letter|
    subs << string.slice(0, letter)
  end
  subs
end
puts substrings("abc")
