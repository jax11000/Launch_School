def is_lower?(a)
  ('a'..'z').include?(a)
end

def is_upper?(a)
  ('A'..'Z').include?(a)
end

def letter_case_count(string)
  cases = {lowercase: 0, uppercase: 0, neither: 0}
  string.chars.each do |x|
    if is_lower?(x)
      cases[:lowercase] += 1
    elsif is_upper?(x)
      cases[:uppercase] += 1
    else
      cases[:neither] += 1
    end
  end
  cases
end
puts letter_case_count('the cat is Blue 1234')
        
