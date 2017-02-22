def average(arr)
  sum = arr.inject(0) { |sum, x| sum + x }
  average = sum / arr.length
end

puts average([1,5,87,45,8,8])