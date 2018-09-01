def max_prime(x)
  prime = a
  (2..Math.sqrt(a).to_i).each do |x|
    break if prime <= x
    prime /= x while (prime > x && prime % x == 0)
  end
  prime
end

p max_prime 600851475143
