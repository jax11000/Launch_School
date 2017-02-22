def multiply(num1, num2)
  num1 * num2
end

def square(n, p)
  p.times do
    multiply(n, n)
  end
end

puts square(5, 3)