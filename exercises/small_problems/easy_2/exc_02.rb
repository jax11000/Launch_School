# my answer
puts "What is the length of the room in meters?"
length_meters = gets.chomp
puts "What is the width of the room in meters?"
width_meters = gets.chomp

square_meters = length_meters.to_f * width_meters.to_f
square_feet = square_meters * 10.7639

puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."

=begin launch answer
SQMETERS_TO_SQFEET = 10.7639

puts '==> Enter the length of the room in meters: '
legnth = gets.to_f

puts '==> Enter the width of the room in meters: '
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The are of the room is #{square_meters} " + \
"square meters (#{square_feet} square feet)."