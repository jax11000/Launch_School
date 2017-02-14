hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
vowels = 'aeiou'

hsh.each do |key, value|
  value.each do |word|
    word.chars.each do |str|
      puts str if vowels.include?(str) 
    end
  end
end
