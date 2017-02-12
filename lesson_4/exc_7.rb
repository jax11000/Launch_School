statement = "The Flintstones Rock"
arr = statement.split('')
counts = arr.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1}
puts counts 