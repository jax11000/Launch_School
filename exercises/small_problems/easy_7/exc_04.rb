def is_lower?(a)
  ('a'..'z').include?(a)
end

def is_upper?(a)
  ("A"..'Z').include?(a)
end

def swapcase(string)
  string_arr = string.chars
  string_arr.map! do |x|
    if is_lower?(x)
      x.upcase
    else
      x.downcase
    end
  end
  string_arr.join
end
puts swapcase('Tonight on Tv')