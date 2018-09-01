# fixed prime test code
def is_prime n
  if n <= 3 && n >1
    return true
  elsif n % 2 == 0 || n % 3 == 0
    return false
  else
    # .step: i increment by 6
    # Math.sqrt() get square root
    # cannot use while i*i < n, there is a bug.
    (5..Math.sqrt(n).ceil).step(6) do |i|
      if n % i == 0 || n % (i + 2) == 0
        return false
      end
    end
    return true
  end
end

#buggy code come back later to fix it

#improved version of check primality
=begin
We can do following optimizations:
Instead of checking till n, we can check till √n because a larger factor
of n must be a multiple of smaller factor that has been already checked.
The algorithm can be improved further by observing that all primes are
of the form 6k ± 1, with the exception of 2 and 3. This is because all
integers can be expressed as (6k + i) for some integer k and
for i = ?1, 0, 1, 2, 3, or 4; 2 divides (6k + 0), (6k + 2), (6k + 4);
and 3 divides (6k + 3). So a more efficient method is to test if n is
divisible by 2 or 3, then to check through all the numbers of
form 6k ± 1.

you need to check whether n is divisible by 6K - 1 or
6K + 1 (the difference between them is 2)
=end

def prime_? a
  i = 5 # when k = 1 , 6*K-1 = 5 6*K+1 = i+2
  if a == 2
    true
  elsif a % 2 == 0
    false
  elsif a % 3 == 0
    false
  else
   for i in 5...Math.sqrt(a).ceil do  # 测素数
    if (a % i == 0 || a % (i + 2)) == 0
      return false # this is not the last statement inside the loop so we need return.
    end
    i += 6 # when k = 2, 6*K-1 = 11 - 5 = 6 6*K+1 = 12 - 7 = 6
   end
   true
 end
end

#is_prime 600851475143

#puts prime_nth(10001)
=begin
def largest_prime_factor n
  if prime_? n
    return n
  else
    targ = n/2
    while targ >=2
      if prime_? targ && n % targ == 0
        return targ
      end
      targ -= 1
    end
  end
end
=end
def largest_prime_factor n
  max_prime = -1
  i = 3
  # check if n is product of 2's. then the max prime is 2. and n will be 1 at the end.
  while n % 2 == 0
    max_prime = 2
    n /= 2
  end

  #if n is produc of 3's , then the max prime is 3, and n will be 1 at the end.
  #if n is not product of 3's, it contains other prime factors. these factors must be greater
  #than 3 because we alreay excluded 2's in the previous step. and  we have excluded 2's multiples in the
  #previous steps, so only need to check the odd numbers for possible factors.
 while i*i <= n
  while n % i == 0
    max_prime = i
    n /= i
  end
   i += 2
 end

 if n > 2
   max_prime = n
 end
  max_prime
end

#p largest_prime_factor 6003
