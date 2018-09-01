# use permutation tool.
def millionth
  a = [0,1,2,3,4,5,6,7,8,9]
  # take the first million items as an array
  arr = a.permutation.to_a.take(1000000)
  arr.last.join.to_i
end

p millionth

# implement permutation
