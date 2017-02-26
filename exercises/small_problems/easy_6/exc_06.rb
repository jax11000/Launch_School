def merge(arr1, arr2)
  concat_arr = arr1 + arr2
  concat_arr.uniq!
end

puts merge([1,3,5], [3,6,9])