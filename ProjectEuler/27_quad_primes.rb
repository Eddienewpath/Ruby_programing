require "Prime"
#brute force
def quad_prime
  max_val = 0
  ans_a = 0
  ans_b = 0
  for a in -1000..1000
    for b in -1000..1000
      n = 0
      n += 1 while (((n*n + a*n + b).abs).prime?)
      if n > max_val
        max_val = n
        ans_a = a
        ans_b = b
      end
    end
  end
  ans_a * ans_b
end

p quad_prime
