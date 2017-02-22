puts "What is the bill?"
bill = gets.to_f

puts "What is the tip percentage?"
percent = gets.to_f / 100

tip = (bill * percent).round(2)

total = (bill + tip).round(2)

puts "The tip is $#{sprintf("%0.2f", tip)}"
puts "The total is $#{sprintf("%0.2f", total)}"