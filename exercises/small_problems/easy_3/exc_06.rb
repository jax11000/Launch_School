def xor(condition1, condition2)
  case 
  when condition1 == true && condition2 == false
    return true
  when condition1 == false && condition2 == true
    return true
  else
    return false
  end
end

puts xor(5.even?, 4.even?) == true
puts xor(5.odd?, 4.even?) == false