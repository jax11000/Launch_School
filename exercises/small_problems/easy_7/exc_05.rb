def staggered_case(string)
  string_arr = string.chars
  string_arr.each_with_index do |character, index|
    next if character
    if index.even?
      character.upcase!
    else
      character.downcase!
    end
  end
  string_arr.join('')
end

puts staggered_case('I Love Launch School')