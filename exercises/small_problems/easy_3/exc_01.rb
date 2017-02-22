puts "Enter the first number"
first = gets.chomp.to_i
puts "Enter the second number"
second = gets.chomp.to_i
puts "Enter the third number"
third = gets.chomp.to_i
puts = "Enter the fourth number"
fourth = gets.chomp.to_i
puts = "Enter the fifth number"
fifth = gets.chomp.to_i
puts "Enter the last number"
last = gets.chomp.to_i

numbers = [first, second, third, fourth, fifth]

if numbers.include?(last)
  puts "The number #{last} appears in #{numbers}"
else
  puts "The number #{last} does not appear in #{numbers}"
end