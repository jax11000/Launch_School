def triangle(num)
  i = 1
  while i < num
    i.times do print '*'
    end
    puts
    i += 1
  end
  num.times do print '*'
  end
end
triangle(9)