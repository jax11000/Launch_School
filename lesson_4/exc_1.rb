flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
new_hash = {}
flintstones.each_with_index do |str, index|
  new_hash[index] = str
end
puts new_hash