def grade(num)
  case 
  when num >= 90 && num <= 100
    puts 'A'
  when num < 90 && num >= 80
    puts 'B'
  when num < 80 && num >= 70
    puts 'C'
  when num < 70 && num >= 60
    puts 'D'
  when num < 60
    puts 'F'
  end
end

def get_grade(num1, num2, num3)
  average = (num1 + num2 + num3) / 3
  grade(average)
end

get_grade(80, 85, 90)