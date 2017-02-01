

my_arr = ['first', 'second', 'third', 'fourth']

my_arr.each_with_index do |number, index|

    puts "#{index + 1} #{number}"
  end