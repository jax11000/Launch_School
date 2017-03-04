require 'pry'
my_hash = {title: "Master", occupation:"Plumber"}
my_arr = ["John", "Q", "Doe"]
def hello_stranger(arr, hash)
  arr = arr.join(" ")
  puts "Hello #{arr} nice to have a #{hash[:title]} #{hash[:occupation]} around here"
end
hello_stranger(my_arr, my_hash)
