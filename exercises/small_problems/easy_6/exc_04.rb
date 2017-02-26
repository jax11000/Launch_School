array = [1,2,3,4]
def my_reverse!(arr)
i = 0
j = arr.length-1

while i < j do
  
  last = arr[j]
  first = arr[i]

  arr[i] = last
  arr[j] = first

  i += 1
  j -= 1

end

 arr
end
puts my_reverse!(array)
