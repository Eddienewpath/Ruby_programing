# remainder (9,2) -> 1
def remainder (n,d)
  (n/d).times do
    n -= d
  end
  n
end

#p remainder(27,5)

# movie average rating
def avg_movie_ratings r
  res = {}
  #return a array of outter keys {ryan, clay, christine, jon, david}
  k = r.keys
  k.each do |x|
   #return array of keys of outter key, Ex: ryan keys {avengers, little mermaind, inception }
  inner_arr = r[x].keys
  #loop through each inner keys
  inner_arr.each do |y|
    if res[y] != nil
      res[y] = (res[y] + r[x][y])
    else
    res[y] = r[x][y]
    end
  end
end
res
end

user_ratings = {
   "Ryan" => {"Avengers" => 8, "Little Mermaid" => 8, "Inception" => 9},
   "Clay" => {"Avengers" => 9, "Inception" => 10, "Independence Day" => 7},
   "Christine" => {"Avengers" => 9, "Little Mermaid" => 8, "Inception" => 7},
   "Jon" => {"Avengers" => 5, "Little Mermaid" => 2, "Inception" => 8},
   "David" => {"Avengers" => 3, "Inception" => 8, "Independence Day" => 6}
}
p avg_movie_ratings  user_ratings
