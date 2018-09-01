def nth_prime n
  arr = [2,3,5,7,11,13]
  x = 13
  until arr.length == n
    x +=1
    if prime_2 x
      arr << x
    end
  end
  arr[-1]
end

#                          6th
# 2,3,4,5,6,7,8,9,10,11,12,13,14

#2 is prime  i = 1, x = 2
#3 is prime i = 2, x = 3
#4 is not prime  i = 2, x = 4
#5 is prime i = 3, x = 5
#6 is not prime i = 3, x = 6
#7 is prime i = 4, x = 7
#8 is not prime i = 4, x = 2
#9 is not prime i = 4, x = 10
#10 is not prime i = 4, x = 11
#11 is prime i = 5, x = 12
#12 is not prime i = 5, x = 13
#13 is prime i = 6, x = 14
# return 13

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

def prime_2 a
  i = 5 # when k = 1 , 6*K-1 = 5 6*K+1 = i+2
  if a == 2
    true
  elsif a % 2 == 0
    false
  elsif a % 3 == 0
    false
  else
   while i*i <= a do # 测素数
    if (a % i == 0) || (a % (i + 2) == 0)
     return false # this is not the last statement inside the loop so we need return.
    end
    i += 6 # when k = 2, 6*K-1 = 11 - 5 = 6 6*K+1 = 12 - 7 = 6
   end
   true
 end
end
#p prime_2 600851475143
# slow version
def prime_? a
  if a == 2
    true
  elsif a % 2 == 0
    false
  elsif a % 3 == 0
    false
  else
  (4...(a/2)).each do |idx|
    if a % idx == 0
      return false # this is not the last statement inside the loop so we need return.
    end
  end
  true
  end
end
# another prime test method
def big_prime(x)
  prime = x
  (2..Math.sqrt(x).to_i).each do |i|
    break if prime <= i
    prime /= i while (prime > i && prime % i == 0)
  end
  prime
end

#p big_prime 600851475143

#prime_? 600851475143
def max_prime_factor n
  if prime_2 n
    return n
  else
    div = n/2
    while div >= 2
      if (prime_2 div) && (n % div == 0) # do not forget to put parenthesis
        return div
      end
      div -= 1
    end
  end
end
#puts "hello"
#p max_prime_factor  6008
#p nth_prime 100
#p prime_? 25
#p Prime.first(10).last
p nth_prime 10001
