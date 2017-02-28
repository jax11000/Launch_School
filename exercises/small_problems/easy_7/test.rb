arr = [1,2,3,4]
arr2 = [5,6,7,8]
puts arr.each do |x|
  x * arr2.each { |b| b}
end