# count primes before n.

def count_primes(n)
  count = 0
  (2...n).each do |x|
  count += 1 if prime? x
  end
  count
end

def a_prime? p
  return true if p <=3
  return false if p%2 == 0
  return false if p%3 == 0
  tail = Math.sqrt p
  (5..tail).step(6) do |x|
    return false if (p % x == 0 || p % (x + 2) == 0)
  end
  true
end


#The Sieve of Eratosthenes uses an extra O(n) memory.

def count_primes_fast(n)
  is_prime = [false, false]
  (2...n).each do |x|
    is_prime[x] = true;
  end

  tail = Math.sqrt(n).ceil
  for i in 2..tail
    next if !is_prime[i]
    (i*i...n).step(i) do |j|
      is_prime[j] = false
    end
  end

  count = 0
  for k in 0...n
    count += 1 if is_prime[k]
  end
  count
end

start = Time.now
p count_primes_fast 999983
duration = Time.now - start
p duration * 1000
