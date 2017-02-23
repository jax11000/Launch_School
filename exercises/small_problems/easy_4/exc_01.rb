def short_long_short(str1, str2)
  if str1.size > str2.size
    str2.concat(str1.concat(str2))
  else
    str1.concat(str2.concat(str1))
  end
end
puts short_long_short('abc', 'defgh')
puts short_long_short('abcde', 'fgh')