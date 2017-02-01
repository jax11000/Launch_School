
my_hash = {name: "Bob", color: 'blue', size: "tiny"}


def keys(hash)

  puts hash.keys

end


def values(hash)

  puts hash.values

end


def both(hash)

puts hash.keys  + hash.values

end

keys(my_hash)
puts
values(my_hash)
puts
both(my_hash)