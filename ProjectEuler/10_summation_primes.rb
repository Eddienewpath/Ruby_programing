# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

def primes_sum
  primeArr = []
  num = 2
  while num < 2000000
    if is_prime num
      primeArr << num
    end
    num += 1
  end
  primeArr.reduce(:+)
end

def is_prime n
  if n <= 3 && n >1
    return true
  elsif n % 2 == 0 || n % 3 == 0
    return false
  else
    # .step: i increment by 6
    # cannot use while loop, there is a bug , for loop is ok.
    (5..Math.sqrt(n).ceil).step(6) do |i|
      if n % i == 0 || n % (i + 2) == 0
        return false
      end
    end
    return true
  end
end

p primes_sum
