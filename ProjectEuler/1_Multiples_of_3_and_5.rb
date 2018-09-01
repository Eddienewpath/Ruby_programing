#Find the sum of all the multiples of 3 or 5 below 1000.
# brute force:
# find all the multiple of 3 or 5
def sum
  total = 8
  i = 6
  while i < 1000
    total += i if (i % 3 == 0) || (i % 5 == 0)
    i += 1
  end
  total
end

p sum
