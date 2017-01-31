def number_size(num)

  if num > 100
    puts "Please enter a number less than 100."
  elsif num >= 51 && num <= 100
    puts "This number is between 51 and 100."
  elsif num >= 0 && num <=50
    puts "This number is between 0 and 50"
  else
    puts "Please enter a positive number."
  end
end

def number_size_case(num)

case 
when num > 100
  puts "Please enter a number less than 100."
when num >= 51 && num <= 100
  puts "This number is between 51 and 100."
when num >= 0 && num <= 50
  puts "This number is between 0 and 50."
end
end
puts "Please enter your number."

number = gets.chomp.to_i

number_size(number)

number_size_case(number)

    