=begin orgininal answer
age = rand(20..200)

puts "Teddy is #{age} years old!"
=end

# further exploration

age = rand(20..200)

puts "What is your name?"
person = gets.chomp

if person == ''
  puts "Teddy is #{age} years old!"
else
  puts "#{person} is #{age} years old!"
end

    