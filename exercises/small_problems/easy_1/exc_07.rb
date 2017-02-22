# my answer
def stringy(num)
  binary = ''
  if num % 2 != 0
    (num / 2).times do 
      binary += '10'
    end 
    binary += '1'
  else
  (num / 2).times do
    binary += '10'
  end
  end
  binary
end
puts stringy(6)

=begin launch answer
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? 1 : 0
    numbers << number
  end
  numbers.join
end
=end