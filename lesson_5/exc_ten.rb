a = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
a.map do |hash|
hash_plus = {}
  hash.each do |key, value|
    hash_plus[key] = value + 1
  end
  puts hash_plus
end

