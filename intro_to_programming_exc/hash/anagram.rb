words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

keys = {}

words.each do |x|
  ana = x.split("").sort
  if keys.has_key?(ana)
    keys[ana].push(x)
  else 
    keys[ana] = [x]
  end
end

keys.each do |k, v|
  print v
end