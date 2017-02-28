require 'pry'
def multiply_lists(arr1, arr2)
  product_arr = []
  new_arr = arr1.zip(arr2)
  new_arr.each do |array|
    product_arr << array.inject(1) {|mult, x| mult *= x}
  end
  product_arr
end
puts multiply_lists([3,5,7],[9,10,11])