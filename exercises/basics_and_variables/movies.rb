movies = {
  'Pulp Fiction' => 1994,
  'Spider-Man 2' => 2014,
  'Back to the Future' => 1985,
  'The Silence of the Lambs' => 1991
 }
new_arr = []
 movies.each do |key, value|
  
  new_arr.push(value)
end
puts new_arr.sort