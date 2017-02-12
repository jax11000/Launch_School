flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! do |str|
  str[0, 3]
end
puts flintstones