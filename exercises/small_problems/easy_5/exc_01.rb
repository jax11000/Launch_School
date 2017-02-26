def ascii_value(string)
  arr = string.chars
  value_arr = []
  arr.each do |character|
    value_arr <<character.ord
  end
  value = value_arr.inject(0){|sum, x| sum + x}
  value
end
puts ascii_value("Four score") == 984