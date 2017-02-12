words = "the flintstones rock"

word_arr = words.split(' ')

word_arr.each do |word|
  word.capitalize!
end
words =  word_arr.join(' ')
puts words 
