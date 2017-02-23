def multiple(number, divisor)
  number % divisor == 0
end
def multisum(num)
  1.upto(num) do |number|
    if multiple(number, 3) || multiple(number, 5)
      sum += number
    end
  end
  sum
  

end