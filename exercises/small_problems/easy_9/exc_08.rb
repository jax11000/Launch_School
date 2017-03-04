def sequence(count, number)
  seq_arr = []
  multiplier = 1
  while multiplier <= count
    seq_arr << multiplier * number
    multiplier += 1
  end
  seq_arr
end
puts sequence(5, 1)