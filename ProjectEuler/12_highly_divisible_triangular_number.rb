# nth triangle number: n*(n+1)/2
# number of divisors: nth / 2 must greater than 500

def triangle_num
  num = 0
  i = 1
  while (num_of_divisors num) < 500
    # get triangle number
    num += i
    i += 1
  end
  num
end

private
def num_of_divisors n
  c = 0
  root = Math.sqrt(n)
  for j in 1..root
    # divisors come in pairs
   if n % j == 0
      c += 2
    end
  end
  # avoid counting twice
  if root*root == n
    c -= 1
  end
  c
end
p triangle_num
