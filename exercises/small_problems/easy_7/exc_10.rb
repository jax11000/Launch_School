def multiply_all_pairs(arr1, arr2)
  products = []
  arr1.each do |x|
    arr2.each do |b|
      products << x * b
    end
  end
  products.sort
end
puts multiply_all_pairs([2,4], [4,3,1,2])