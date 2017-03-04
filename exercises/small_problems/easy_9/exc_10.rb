require 'pry'
def buy_fruit(arr)
  new_arr = []
  arr.each do |array|
    array[1].times do 
      new_arr << array[0]
    end
  end
  new_arr

  binding.pry
end
puts buy_fruit([["apples", 3], ["organges", 4]])