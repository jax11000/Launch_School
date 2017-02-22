vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
# my answer
def count_occurrences(arr)
  counts = {}

  arr.uniq do |word|
    counts[word] = arr.count(word)
  end

  counts.each do |key, value|
    puts "#{key} => #{value}"
  end
end

count_occurrences(vehicles)

=begin launch answer

def count_occurrences(array)
  occurences = {}

  arr.uniq.each do |element|
    occurences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end