def sum_of_sums(arr)
  total = 0
  1.upto(arr.size) do |x|
    total += arr.slice(0, x).reduce(:+)
  end
  total
end
puts sum_of_sums([3,5,2])