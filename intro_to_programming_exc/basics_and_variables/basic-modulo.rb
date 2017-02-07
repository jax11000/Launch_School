# find number in thousands, hundreds, tens, and ones places. 
puts "Enter number you would like to process."
number = gets.chomp
number = number.to_i
thousands = number / 1000

hundreds = (number % 1000) / 100
tens = (number % 100) / 10
ones = number % 10

puts thousands.to_s
puts hundreds.to_s
puts tens.to_s
puts ones.to_s
