arr = [1,2,2,3,4,5]
puts arr.detect{ |e| arr.count(e) > 1}