def recursion(number)
  if number <= 1
    puts number
  else
    puts number
    recursion(number - 1)
    
  end
end

recursion(10)