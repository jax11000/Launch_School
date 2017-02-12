flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts flintstones.each_index.select{|x| flintstones[x].split('').first(2) == ['B','e']}
