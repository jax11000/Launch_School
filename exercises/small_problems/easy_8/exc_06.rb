def fizzbuzz(num1, num2)
  while num1 <= num2
    if num1 % 5 == 0 && num1 % 3 == 0
      print "FizzBuzz "
    elsif num1 % 5 == 0
      print "Buzz "
    elsif num1 % 3 == 0 
      print "Fizz "
    else
    print "#{num1} "
    end
    num1 += 1
  end
end



fizzbuzz(1, 15)