a = [1,2,3]

def mutate(array)
  array.pop
end
puts "before mutate method: #{a}"
mutate(a)
puts "after mutate method: #{a}"