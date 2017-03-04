require 'pry'
def countup(num)
  count = 1 
  count_arr = []
  loop do 
    count_arr << count
    count += 1
    break if count > num
  end
  count_arr
end
puts countup(14)