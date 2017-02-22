def comp_sum(num)
  total = (1..num).inject {|sum, x| sum + x}
end

def comp_prod(num)
  total = (1..num).inject(1) {|prod, x| prod * x}
end
loop do
  puts "Please enter a value greater than 0"
  num = gets.to_i
  next if num <= 0

  puts "Enter 's' to compute a sum, enter 'p' for product"
  operator = gets.chomp
if operator == 's'
  puts "The sum of numbers between 1 and #{num} is #{comp_sum(num)}"
elsif operator == 'p'
  puts "The product of numbers between 1 and #{num} is #{comp_prod(num)}"
else
  puts "Invalid input retry."
end
break if operator == 's' || operator == 'p'
end



