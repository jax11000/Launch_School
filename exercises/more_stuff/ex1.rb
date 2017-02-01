words = ['laboratory', 'experiment', 'pans labyrinth', 'elaborate', 'polar bear']

def has_lab?(word)
  if word =~ /lab/
    puts word
  else
    puts "nope"
  end
end

words.each do |x|
  has_lab?(x)
end