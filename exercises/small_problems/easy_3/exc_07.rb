def oddities(arr)
  odd_arr = []
  arr.each_index do |x|
    if x.even?
      odd_arr.push(arr[x])
    end
  end
  odd_arr
end

def oddities2(arr)
  odd_arr = []
  arr.collect!.with_index do |x, i|
    if i.even?
      odd_arr.push(x)
    end
  end
  odd_arr
end
puts oddities2([2,3,4,5,6,])