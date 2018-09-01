# 12 + 22 + ... + 102 = 385
# (1 + 2 + ... + 10)2 = 552 = 3025
# 3025 − 385 = 2640
# Find the difference between the sum of the squares of the first one
# hundred natural numbers and the square of the sum.

def difference
  sqrt_sum = 0
  sum = 50*101
  i = 1
  while i <= 100
     sqrt_sum += i*i
     i += 1
  end
  sum*sum - sqrt_sum
end

p difference
