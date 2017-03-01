CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)
def doubled_cons(string)
  result = ''
  string.each_char do |x|
    result << x
    result << x if CONSONANTS.include?(x.downcase)
  end
  result
end
puts doubled_cons("Hello World!")