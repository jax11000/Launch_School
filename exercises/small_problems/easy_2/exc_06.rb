=begin first attempt
arr = (1..100).to_a
puts arr
arr.each do |num|
  if num.odd?
    puts num
  end
end
=end
=begin
num = 0 # second attempt

until num >= 99
  num += 1
  puts num if num.odd?
end
=end

num = 1
loop do

  puts num += 2
  break if num >= 99
end
