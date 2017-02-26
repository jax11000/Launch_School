def find_fib_by_length(number)
  first = 1
  second = 1
  index = 2

  loop do 
    index += 1
    fib = second + first

    break if fib.to_s.size >= number

    first = second
    second = fib

  end
  index
end

puts find_fib_by_length(100)