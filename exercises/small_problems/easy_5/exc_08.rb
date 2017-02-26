NUMBERS = {0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'sevem', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}

def alphabetical(arr)
  arr.map! do |number|
    number = NUMBERS[number]
  end
  arr.sort!.map! do |string|
    string = NUMBERS.key(string)
  end
end
puts alphabetical((0..19).to_a)
