def real_palindrome?(str)
  str.downcase.gsub(/[^a-z]/, '') == str.downcase.gsub(/[^a-z]/, '').reverse
end

puts real_palindrome?('madam')
puts real_palindrome?('Madam')
puts real_palindrome?("Madam I'm Adam")
puts real_palindrome?("356a653")