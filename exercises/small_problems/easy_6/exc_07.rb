require 'pry'
def halvsies(arr)
  half = arr.length / 2
  if arr.length.even?
    sub_arrs = arr.each_slice(half).to_a
  else
    sub_arrs = arr.each_slice((half+1)).to_a
  end
end

puts halvsies([1,2,3,4,5,6,7]) == [[1,2,3,4], [5,6,7]]