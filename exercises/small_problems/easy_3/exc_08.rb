def palindrome?(str)
  string = str.chars
  revstr = str.chars.reverse
  if string == revstr 
    true
  else 
    false
  end
end
puts palindrome?("madam")
puts palindrome?("Madam")
puts palindrome?("madam i'm adam")
puts palindrome?('356653')