def remove_vowels(string_array)
  string_array.map! do |word|
    word.gsub(/[aeiou]/i, '')
  end
  string_array
end
puts remove_vowels(%w(green YELLOW black white))