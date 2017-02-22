puts "What is your age?"
age = gets.to_i

puts "What age would you like to retire at?"
retire = gets.to_i

current_year = Time.now.year
time_left = retire - age
retire_year = current_year + time_left

puts "It's #{current_year} you will retire in #{retire_year}."
puts "You only have #{time_left} years of work to go!"