def caps_if_10(string)
  if string.length >= 10
    string = string.upcase
  end
end

puts caps_if_10('morethantenlettersdefinitely')