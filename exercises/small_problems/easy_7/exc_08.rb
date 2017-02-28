def mult_average(arr)
  multiply = arr.inject(1) { |mult, x| mult *= x}
  average = multiply.to_f / arr.length.to_f
  sprintf "%.3f", average
end

puts mult_average([2,5,7,11,13,17])