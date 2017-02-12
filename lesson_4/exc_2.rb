ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total = 0
arr_val = ages.values
total = arr_val.inject(0){|sum, x| sum + x}
puts total