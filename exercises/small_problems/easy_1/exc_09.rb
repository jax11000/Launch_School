# my answer
def sum(num)
  arr = num.to_s.split('')
  arr.map! do |x|
    x.to_i
  end
  arr.inject(0) { |sum, x| sum + x}
end

puts sum(496)

=begin launch answer
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end