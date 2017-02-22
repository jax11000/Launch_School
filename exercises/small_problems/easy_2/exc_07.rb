=begin first attempt
arr = (1..99).to_a
arr.each do |num|
  if num.even?
    puts num
  end
end
=end

# second attempt
arr = (1..99).to_a

arr.select!{ |num| num.even?}

num = 2

loop do
  num += 2 
  puts num
  break if num >= 98
end
