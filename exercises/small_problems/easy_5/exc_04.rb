require 'pry'
def swap(string)
  string_arr = string.split(' ').map! {|word| word.split('')}
  string_arr.each do |word|
    word[0], word[(word.length - 1)] = word[(word.length - 1)], word[0]
  end
  string_arr.map!{|x| x.join}
  string_arr.join(' ')

end
puts swap('abcde') == "ebcda"