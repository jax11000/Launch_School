# merge 
one_hash = {a: 5, b: 10}
two_hash = {c: 15, d: 20}

three_hash = one_hash.merge(two_hash)
#this will merge the two hashes but leave the originals untouched.
puts one_hash
puts two_hash
puts three_hash

puts one_hash.merge!(two_hash)
#this will merge the two and eliminate the originals
